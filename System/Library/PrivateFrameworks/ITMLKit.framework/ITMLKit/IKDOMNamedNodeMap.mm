@interface IKDOMNamedNodeMap
- (id)getNamedItem:(id)item;
- (id)setNamedItem:(id)item;
@end

@implementation IKDOMNamedNodeMap

- (id)getNamedItem:(id)item
{
  v19 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [(IKDOMNodeList *)self _updateNodes];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  nodes = [(IKDOMNodeList *)self nodes];
  v6 = [nodes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(nodes);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        nodeName = [v9 nodeName];
        v11 = [nodeName isEqualToString:itemCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [nodes countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)setNamedItem:(id)item
{
  itemCopy = item;
  nodeName = [itemCopy nodeName];
  v6 = [(IKDOMNamedNodeMap *)self getNamedItem:nodeName];

  contextNode = [(IKDOMNodeList *)self contextNode];
  nodePtr = [contextNode nodePtr];

  nodeName2 = [itemCopy nodeName];
  uTF8String = [nodeName2 UTF8String];

  nodeValue = [itemCopy nodeValue];

  uTF8String2 = [nodeValue UTF8String];
  if (v6)
  {
    xmlSetProp(nodePtr, uTF8String, uTF8String2);
  }

  else
  {
    xmlNewProp(nodePtr, uTF8String, uTF8String2);
  }

  return v6;
}

@end