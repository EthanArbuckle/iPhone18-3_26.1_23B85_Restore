@interface ViewAccessRequester
- (id)requestAssertionForViewName:(id)name error:(id *)error;
@end

@implementation ViewAccessRequester

- (id)requestAssertionForViewName:(id)name error:(id *)error
{
  v5 = sub_1C4F01138();
  v7 = v6;
  selfCopy = self;
  v9 = sub_1C44E81A0(v5, v7);

  return v9;
}

@end