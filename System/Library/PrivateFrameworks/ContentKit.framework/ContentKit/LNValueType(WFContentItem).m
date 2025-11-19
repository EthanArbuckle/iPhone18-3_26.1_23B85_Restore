@interface LNValueType(WFContentItem)
- (id)wf_objectClass;
@end

@implementation LNValueType(WFContentItem)

- (id)wf_objectClass
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v1 memberValueType];
      v3 = [v2 wf_objectClass];

LABEL_4:
      goto LABEL_10;
    }
  }

  v4 = [v1 objectClass];
  if (v4 == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 typeIdentifier] == 1)
    {
      v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v3 = objc_opt_class();
      goto LABEL_4;
    }
  }

  v3 = v4;
LABEL_10:

  return v3;
}

@end