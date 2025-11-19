@interface MRDGroupSessionUIManager
+ (id)create;
- (MRDGroupSessionUIManager)init;
@end

@implementation MRDGroupSessionUIManager

+ (id)create
{
  v2 = [objc_allocWithZone(type metadata accessor for GroupSessionUIManagerImplementation()) init];

  return v2;
}

- (MRDGroupSessionUIManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GroupSessionUIManager();
  return [(MRDGroupSessionUIManager *)&v3 init];
}

@end