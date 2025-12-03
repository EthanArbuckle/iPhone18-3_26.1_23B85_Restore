@interface MAEdge
- (BOOL)conformsToEdgeSchema:(id)schema;
- (BOOL)hasEqualPropertiesToEdge:(id)edge;
- (BOOL)hasProperties;
- (BOOL)hasProperties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEdge:(id)edge;
- (BOOL)isLoop;
- (BOOL)isSameEdgeAsEdge:(id)edge;
- (BOOL)isUnique;
- (MAEdge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode;
- (MAEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (MAEdge)initWithSourceNode:(id)node targetNode:(id)targetNode;
- (NSDictionary)properties;
- (NSSet)labels;
- (NSString)description;
- (id)commonNode:(id)node;
- (id)oppositeNode:(id)node;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
- (id)propertyForKey:(id)key kindOfClass:(Class)class;
- (id)propertyKeys;
- (id)shortDescription;
- (id)visualStringWithName:(id)name andPropertyKeys:(id)keys;
- (unint64_t)hash;
- (unint64_t)propertiesCount;
- (void)enumeratePropertiesUsingBlock:(id)block;
- (void)setGraphReference:(id)reference;
@end

@implementation MAEdge

- (id)visualStringWithName:(id)name andPropertyKeys:(id)keys
{
  nameCopy = name;
  v7 = MEMORY[0x277CCAB68];
  keysCopy = keys;
  string = [v7 string];
  [string appendString:@"["];
  if (nameCopy)
  {
    [string appendString:nameCopy];
  }

  label = [(MAEdge *)self label];

  if (label)
  {
    label2 = [(MAEdge *)self label];
    [string appendFormat:@":%@", label2];
  }

  else
  {
    [string appendFormat:@":"];
  }

  if ([(MAEdge *)self domain]&& [(MAEdge *)self domain]!= 1)
  {
    [string appendFormat:@":%lu", -[MAEdge domain](self, "domain")];
  }

  propertyDictionary = [(MAEdge *)self propertyDictionary];
  v13 = PropertiesVisualStringForKeys(keysCopy, propertyDictionary);

  if ([v13 length] >= 3)
  {
    [string appendFormat:@" %@", v13];
  }

  [string appendString:@"]"];

  return string;
}

- (BOOL)isLoop
{
  selfCopy = self;
  sourceNode = [(MAEdge *)self sourceNode];
  targetNode = [(MAEdge *)selfCopy targetNode];
  LOBYTE(selfCopy) = sourceNode == targetNode;

  return selfCopy;
}

- (id)commonNode:(id)node
{
  nodeCopy = node;
  sourceNode = [(MAEdge *)self sourceNode];
  targetNode = [(MAEdge *)self targetNode];
  sourceNode2 = [nodeCopy sourceNode];
  targetNode2 = [nodeCopy targetNode];

  v9 = [sourceNode isEqual:sourceNode2];
  v10 = sourceNode;
  if (v9 & 1) != 0 || (v11 = [sourceNode isEqual:targetNode2], v10 = sourceNode, (v11) || (v12 = objc_msgSend(targetNode, "isEqual:", sourceNode2), v10 = targetNode, (v12) || (v13 = objc_msgSend(targetNode, "isEqual:", targetNode2), v10 = targetNode, v13))
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)oppositeNode:(id)node
{
  nodeCopy = node;
  sourceNode = [(MAEdge *)self sourceNode];
  targetNode = [(MAEdge *)self targetNode];
  v7 = [nodeCopy isSameNodeAsNode:sourceNode];
  v8 = targetNode;
  if ((v7 & 1) != 0 || (v9 = [nodeCopy isSameNodeAsNode:targetNode], v8 = sourceNode, v9))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)propertyDictionary
{
  v2 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (id)propertyKeys
{
  v2 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (unint64_t)propertiesCount
{
  v2 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (BOOL)hasProperties
{
  v2 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (void)enumeratePropertiesUsingBlock:(id)block
{
  blockCopy = block;
  propertyDictionary = [(MAEdge *)self propertyDictionary];
  [propertyDictionary enumerateKeysAndObjectsUsingBlock:blockCopy];
}

- (id)propertyForKey:(id)key kindOfClass:(Class)class
{
  v4 = [(MAEdge *)self propertyForKey:key];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  propertyDictionary = [(MAEdge *)selfCopy propertyDictionary];
  v7 = propertyDictionary;
  if (propertyDictionary)
  {
    v8 = [propertyDictionary objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 count];
    if (v6 <= [(MAEdge *)self propertiesCount])
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 1;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __24__MAEdge_hasProperties___block_invoke;
      v9[3] = &unk_2797FF298;
      v9[4] = self;
      v9[5] = &v10;
      [v5 enumerateKeysAndObjectsUsingBlock:v9];
      v7 = *(v11 + 24);
      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void __24__MAEdge_hasProperties___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 propertyForKey:a2];
  LOBYTE(v7) = [v9 isEqual:v8];

  *(*(*(a1 + 40) + 8) + 24) = v7;
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)isUnique
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  concreteGraph = [(MAGraphReference *)self->_graphReference concreteGraph];
  if (concreteGraph)
  {
    sourceNode = [(MAEdge *)self sourceNode];
    label = [(MAEdge *)self label];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __18__MAEdge_isUnique__block_invoke;
    v8[3] = &unk_2797FF270;
    v8[4] = self;
    v8[5] = &v9;
    [sourceNode enumerateEdgesWithLabel:label domain:0 usingBlock:v8];
  }

  v6 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v6;
}

void __18__MAEdge_isUnique__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (([v5 isSameEdgeAsEdge:*(a1 + 32)] & 1) == 0 && objc_msgSend(v5, "isEqualToEdge:", *(a1 + 32)))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (BOOL)isEqualToEdge:(id)edge
{
  edgeCopy = edge;
  if (edgeCopy && (v5 = -[MAEdge domain](self, "domain"), v5 == [edgeCopy domain]) && (-[MAEdge weight](self, "weight"), v7 = v6, objc_msgSend(edgeCopy, "weight"), v7 == v8))
  {
    label = [(MAEdge *)self label];
    label2 = [edgeCopy label];
    if ((label == label2 || [label isEqualToString:label2]) && -[MAEdge hasEqualPropertiesToEdge:](self, "hasEqualPropertiesToEdge:", edgeCopy))
    {
      sourceNode = [(MAEdge *)self sourceNode];
      targetNode = [(MAEdge *)self targetNode];
      sourceNode2 = [edgeCopy sourceNode];
      targetNode2 = [edgeCopy targetNode];
      v9 = (sourceNode == sourceNode2 || [sourceNode isEqualToNode:sourceNode2]) && (targetNode == targetNode2 || (objc_msgSend(targetNode, "isEqualToNode:", targetNode2) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasEqualPropertiesToEdge:(id)edge
{
  edgeCopy = edge;
  propertyDictionary = [(MAEdge *)self propertyDictionary];
  propertyDictionary2 = [edgeCopy propertyDictionary];

  LOBYTE(edgeCopy) = [propertyDictionary isEqualToDictionary:propertyDictionary2];
  return edgeCopy;
}

- (BOOL)isSameEdgeAsEdge:(id)edge
{
  edgeCopy = edge;
  v5 = edgeCopy;
  if (edgeCopy == self)
  {
    v8 = 1;
  }

  else
  {
    graphReference = [(MAEdge *)edgeCopy graphReference];
    graphReference2 = [(MAEdge *)self graphReference];
    if (graphReference == graphReference2)
    {
      identifier = [(MAEdge *)v5 identifier];
      v8 = identifier == [(MAEdge *)self identifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(MAGraphReference *)self->_graphReference hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_13;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    v8 = v7;
    identifier = self->_identifier;
    if (identifier == 0x7FFFFFFFFFFFFFFFLL && v7->_identifier == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    if (self->_graphReference != v7->_graphReference)
    {
      graph = [(MAEdge *)self graph];
      graph2 = [(MAEdge *)v8 graph];

      if (graph != graph2)
      {
LABEL_9:
        v6 = [(MAEdge *)self isEqualToEdge:v8];
LABEL_12:

        goto LABEL_13;
      }

      identifier = self->_identifier;
    }

    v6 = identifier == v8->_identifier;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (NSDictionary)properties
{
  propertyDictionary = [(MAEdge *)self propertyDictionary];
  [(MAEdge *)self weight];
  v5 = [(MAKGWeightConversion *)v4 kgPropertiesForMAProperties:propertyDictionary weight:?];

  return v5;
}

- (NSSet)labels
{
  graphReference = [(MAEdge *)self graphReference];
  concreteGraph = [graphReference concreteGraph];
  label = [(MAEdge *)self label];
  v6 = [concreteGraph labelsForLabel:label domain:{-[MAEdge domain](self, "domain")}];

  return v6;
}

- (MAEdge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode
{
  v22 = 1;
  v21 = 0;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  propertiesCopy = properties;
  MALabelAndDomainFromKGLabels(labels, &v21, &v22);
  v15 = v21;
  v20 = 0;
  v19 = 0;
  [MAKGWeightConversion maPropertiesAndWeightForKGProperties:propertiesCopy maProperties:&v19 maWeight:&v20];

  LODWORD(v16) = v20;
  v17 = [(MAEdge *)self initWithLabel:v15 sourceNode:nodeCopy targetNode:targetNodeCopy domain:v22 weight:v19 properties:v16];

  if (v17)
  {
    [(MAEdge *)v17 setIdentifier:identifier];
  }

  return v17;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = MAEdge;
  v4 = [(MAEdge *)&v17 description];
  identifier = self->_identifier;
  [(MAEdge *)self weight];
  v7 = v6;
  label = [(MAEdge *)self label];
  v9 = [v3 stringWithFormat:@"[%@] id:[%lu] weight:[%f] label:[%@]", v4, identifier, *&v7, label];

  v10 = MEMORY[0x277CCACA8];
  sourceNode = [(MAEdge *)self sourceNode];
  shortDescription = [sourceNode shortDescription];
  targetNode = [(MAEdge *)self targetNode];
  shortDescription2 = [targetNode shortDescription];
  v15 = [v10 stringWithFormat:@"%@\n\t\tsourceNode:%@\n\t\ttargetNode:%@", v9, shortDescription, shortDescription2];

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = MAEdge;
  v4 = [(MAEdge *)&v16 description];
  identifier = self->_identifier;
  [(MAEdge *)self weight];
  v7 = v6;
  label = [(MAEdge *)self label];
  v9 = [v3 stringWithFormat:@"[%@] id:[%lu] weight:[%f] label:[%@]", v4, identifier, *&v7, label];

  v10 = MEMORY[0x277CCACA8];
  visualString = [(MAEdge *)self visualString];
  sourceNode = [(MAEdge *)self sourceNode];
  targetNode = [(MAEdge *)self targetNode];
  v14 = [v10 stringWithFormat:@"%@ %@\n\t\tsourceNode:%@\n\t\ttargetNode:%@", v9, visualString, sourceNode, targetNode];

  return v14;
}

- (void)setGraphReference:(id)reference
{
  referenceCopy = reference;
  p_graphReference = &self->_graphReference;
  if (self->_graphReference != referenceCopy)
  {
    v9 = referenceCopy;
    objc_storeStrong(p_graphReference, reference);
    if (v9)
    {
      sourceNode = [(MAEdge *)self sourceNode];
      [sourceNode setGraphReference:v9];

      targetNode = [(MAEdge *)self targetNode];
      [targetNode setGraphReference:v9];
    }
  }

  MEMORY[0x2821F9730](p_graphReference);
}

- (MAEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v17 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v17);
}

- (MAEdge)initWithSourceNode:(id)node targetNode:(id)targetNode
{
  nodeCopy = node;
  targetNodeCopy = targetNode;
  v12.receiver = self;
  v12.super_class = MAEdge;
  v9 = [(MAEdge *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceNode, node);
    objc_storeStrong(&v10->_targetNode, targetNode);
  }

  return v10;
}

- (BOOL)conformsToEdgeSchema:(id)schema
{
  schemaCopy = schema;
  v5 = elementMatchesDefinition(schemaCopy, self);
  sourceNode = [schemaCopy sourceNode];
  sourceNode2 = [(MAEdge *)self sourceNode];
  v8 = v5 & elementMatchesDefinition(sourceNode, sourceNode2);

  targetNode = [schemaCopy targetNode];

  targetNode2 = [(MAEdge *)self targetNode];
  LOBYTE(schemaCopy) = elementMatchesDefinition(targetNode, targetNode2);

  return v8 & schemaCopy;
}

@end