@interface __IMDBackwardCompatibilityMessageIdentifier
- (BOOL)isIgnorableBackwardCompatibilityMessage:(id)a3 inChat:(id)a4;
@end

@implementation __IMDBackwardCompatibilityMessageIdentifier

- (BOOL)isIgnorableBackwardCompatibilityMessage:(id)a3 inChat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22B6FD3F0(v6, v7);
  v10 = v9;

  return v10 & 1;
}

@end