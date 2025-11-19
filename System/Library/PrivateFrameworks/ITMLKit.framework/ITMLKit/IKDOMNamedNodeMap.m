@interface IKDOMNamedNodeMap
- (id)getNamedItem:(id)a3;
- (id)setNamedItem:(id)a3;
@end

@implementation IKDOMNamedNodeMap

- (id)getNamedItem:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(IKDOMNodeList *)self _updateNodes];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(IKDOMNodeList *)self nodes];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 nodeName];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)setNamedItem:(id)a3
{
  v4 = a3;
  v5 = [v4 nodeName];
  v6 = [(IKDOMNamedNodeMap *)self getNamedItem:v5];

  v7 = [(IKDOMNodeList *)self contextNode];
  v8 = [v7 nodePtr];

  v9 = [v4 nodeName];
  v10 = [v9 UTF8String];

  v11 = [v4 nodeValue];

  v12 = [v11 UTF8String];
  if (v6)
  {
    xmlSetProp(v8, v10, v12);
  }

  else
  {
    xmlNewProp(v8, v10, v12);
  }

  return v6;
}

@end