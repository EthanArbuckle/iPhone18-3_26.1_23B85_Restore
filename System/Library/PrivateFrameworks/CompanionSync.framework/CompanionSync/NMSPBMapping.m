@interface NMSPBMapping
- (id)description;
@end

@implementation NMSPBMapping

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = NMSPBMapping;
  v4 = [(NMSPBMapping *)&v9 description];
  v5 = NSStringFromClass([(NMSPBMapping *)self requestClass]);
  if ([(NMSPBMapping *)self responseClass])
  {
    v6 = NSStringFromClass([(NMSPBMapping *)self responseClass]);
    v7 = [v3 stringWithFormat:@"%@: {Request=%@, Response=%@}", v4, v5, v6];
  }

  else
  {
    v7 = [v3 stringWithFormat:@"%@: {Request=%@, Response=%@}", v4, v5, @"(Nil)"];
  }

  return v7;
}

@end