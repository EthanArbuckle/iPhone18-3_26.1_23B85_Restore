@interface MIOMutableModel
- (MIOModelDescription)modelDescription;
- (void)setModelDescription:(id)description;
@end

@implementation MIOMutableModel

- (MIOModelDescription)modelDescription
{
  v4.receiver = self;
  v4.super_class = MIOMutableModel;
  modelDescription = [(MIOModel *)&v4 modelDescription];

  return modelDescription;
}

- (void)setModelDescription:(id)description
{
  v3.receiver = self;
  v3.super_class = MIOMutableModel;
  [(MIOModel *)&v3 setModelDescription:description];
}

@end