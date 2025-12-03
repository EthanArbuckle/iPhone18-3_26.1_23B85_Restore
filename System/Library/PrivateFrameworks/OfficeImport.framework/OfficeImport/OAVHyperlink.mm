@interface OAVHyperlink
+ (id)readFromDrawable:(_xmlNode *)drawable state:(id)state;
@end

@implementation OAVHyperlink

+ (id)readFromDrawable:(_xmlNode *)drawable state:(id)state
{
  v5 = CXDefaultStringAttribute(drawable, CXNoNamespace, "href", 0);
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    if (v7)
    {
      v8 = CXDefaultStringAttribute(drawable, CXNoNamespace, "title", 0);
      v9 = objc_alloc_init(OADHyperlink);
      [(OADHyperlink *)v9 setTargetLocation:v7];
      -[OADHyperlink setTargetMode:](v9, "setTargetMode:", [v6 characterAtIndex:0] != 35);
      [(OADHyperlink *)v9 setTooltip:v8];
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

@end