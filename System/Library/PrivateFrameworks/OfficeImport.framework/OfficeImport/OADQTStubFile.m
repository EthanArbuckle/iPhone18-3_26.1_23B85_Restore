@interface OADQTStubFile
- (id)description;
@end

@implementation OADQTStubFile

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADQTStubFile;
  v2 = [(OADMovie *)&v4 description];

  return v2;
}

@end