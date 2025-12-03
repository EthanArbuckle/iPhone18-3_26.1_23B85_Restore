@interface FBKXMLNode
- (FBKXMLNode)initWithXMLNodePtr:(_xmlNode *)ptr;
@end

@implementation FBKXMLNode

- (FBKXMLNode)initWithXMLNodePtr:(_xmlNode *)ptr
{
  v22.receiver = self;
  v22.super_class = FBKXMLNode;
  v4 = [(FBKXMLNode *)&v22 init];
  if (v4)
  {
    if (ptr->name)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:ptr->name encoding:4];
      name = v4->_name;
      v4->_name = v5;
    }

    if (ptr->content)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:ptr->content encoding:4];
      content = v4->_content;
      v4->_content = v7;
    }

    children = ptr->children;
    for (i = objc_alloc_init(MEMORY[0x1E695DF70]); children; children = children->next)
    {
      v11 = [[FBKXMLNode alloc] initWithXMLNodePtr:children];
      [i addObject:v11];
    }

    v12 = [i copy];
    v13 = v4->_children;
    v4->_children = v12;

    properties = ptr->properties;
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    while (properties)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:properties->name encoding:4];
      if (!properties->children || (null = [[FBKXMLNode alloc] initWithXMLNodePtr:properties->children]) == 0)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v18 = null;
      [v15 setObject:null forKey:v16];

      properties = properties->next;
    }

    v19 = [v15 copy];
    attributes = v4->_attributes;
    v4->_attributes = v19;
  }

  return v4;
}

@end