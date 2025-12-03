@interface OAXConnector
+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state;
+ (void)readConnectionFromParent:(_xmlNode *)parent nodeName:(const char *)name connection:(id)connection drawingState:(id)state;
+ (void)readNonVisualConnectorProperties:(_xmlNode *)properties inNamespace:(id)namespace connectorProperties:(id)connectorProperties drawingState:(id)state;
@end

@implementation OAXConnector

+ (void)readConnectionFromParent:(_xmlNode *)parent nodeName:(const char *)name connection:(id)connection drawingState:(id)state
{
  connectionCopy = connection;
  oAXMainNamespace = [state OAXMainNamespace];
  v10 = OCXFindChild(parent, oAXMainNamespace, name);

  v11 = CXRequiredLongAttribute(v10, CXNoNamespace, "id");
  v12 = CXRequiredLongAttribute(v10, CXNoNamespace, "idx");
  [connectionCopy setDrawableId:v11];
  [connectionCopy setLocationIndex:v12];
}

+ (void)readNonVisualConnectorProperties:(_xmlNode *)properties inNamespace:(id)namespace connectorProperties:(id)connectorProperties drawingState:(id)state
{
  namespaceCopy = namespace;
  connectorPropertiesCopy = connectorProperties;
  stateCopy = state;
  [OAXShape readNonVisualShapeProperties:properties nodeName:"cNvCxnSpPr" inNamespace:namespaceCopy shapeProperties:connectorPropertiesCopy];
  v12 = OCXFindChild(properties, namespaceCopy, "cNvCxnSpPr");
  if (v12)
  {
    from = [connectorPropertiesCopy from];
    [self readConnectionFromParent:v12 nodeName:"stCxn" connection:from drawingState:stateCopy];

    v14 = [connectorPropertiesCopy to];
    [self readConnectionFromParent:v12 nodeName:"endCxn" connection:v14 drawingState:stateCopy];
  }
}

+ (id)readFromXmlNode:(_xmlNode *)node inNamespace:(id)namespace drawingState:(id)state
{
  namespaceCopy = namespace;
  stateCopy = state;
  v10 = objc_alloc_init(OADConnector);
  v11 = OCXFindChild(node, namespaceCopy, "nvCxnSpPr");
  if (!v11)
  {
    [TCMessageException raise:OABadFormat];
  }

  [OAXDrawable readNonVisualPropertiesFromDrawableXmlNode:node inNamespace:namespaceCopy visualNodeName:"nvCxnSpPr" toDrawable:v10 drawingState:stateCopy];
  connectorProperties = [(OADConnector *)v10 connectorProperties];
  [self readNonVisualConnectorProperties:v11 inNamespace:namespaceCopy connectorProperties:connectorProperties drawingState:stateCopy];
  [OAXShape readCoreFromXmlNode:node inNamespace:namespaceCopy toShape:v10 drawingState:stateCopy];

  return v10;
}

@end