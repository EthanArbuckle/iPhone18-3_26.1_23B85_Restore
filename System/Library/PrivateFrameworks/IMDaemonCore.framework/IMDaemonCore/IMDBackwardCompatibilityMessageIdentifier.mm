@interface IMDBackwardCompatibilityMessageIdentifier
+ (IMDBackwardCompatibilityMessageIdentifier)sharedIdentifier;
- (IMDBackwardCompatibilityMessageIdentifier)init;
@end

@implementation IMDBackwardCompatibilityMessageIdentifier

+ (IMDBackwardCompatibilityMessageIdentifier)sharedIdentifier
{
  if (qword_281421200 != -1)
  {
    sub_22B7D05C8();
  }

  v3 = qword_2814211F8;

  return v3;
}

- (IMDBackwardCompatibilityMessageIdentifier)init
{
  v6.receiver = self;
  v6.super_class = IMDBackwardCompatibilityMessageIdentifier;
  v2 = [(IMDBackwardCompatibilityMessageIdentifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(__IMDBackwardCompatibilityMessageIdentifier);
    swiftImplementation = v2->_swiftImplementation;
    v2->_swiftImplementation = v3;
  }

  return v2;
}

@end