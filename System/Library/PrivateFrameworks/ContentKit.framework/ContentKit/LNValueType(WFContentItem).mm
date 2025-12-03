@interface LNValueType(WFContentItem)
- (id)wf_objectClass;
@end

@implementation LNValueType(WFContentItem)

- (id)wf_objectClass
{
  selfCopy = self;
  if (selfCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memberValueType = [selfCopy memberValueType];
      wf_objectClass = [memberValueType wf_objectClass];

LABEL_4:
      goto LABEL_10;
    }
  }

  objectClass = [selfCopy objectClass];
  if (objectClass == objc_opt_class())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [selfCopy typeIdentifier] == 1)
    {
      selfCopy = [MEMORY[0x277CCABB0] numberWithBool:1];
      wf_objectClass = objc_opt_class();
      goto LABEL_4;
    }
  }

  wf_objectClass = objectClass;
LABEL_10:

  return wf_objectClass;
}

@end