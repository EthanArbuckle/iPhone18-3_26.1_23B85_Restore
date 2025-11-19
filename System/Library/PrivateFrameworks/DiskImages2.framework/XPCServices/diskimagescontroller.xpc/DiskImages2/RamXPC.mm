@interface RamXPC
- (RamXPC)initWithCoder:(id)a3;
- (RamXPC)initWithSize:(unint64_t)a3;
- (id)description;
- (void)createRamBackend;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RamXPC

- (RamXPC)initWithSize:(unint64_t)a3
{
  v5 = a3;
  v4.receiver = self;
  v4.super_class = RamXPC;
  if ([(RamXPC *)&v4 init])
  {
    sub_1000DED28();
  }

  return 0;
}

- (void)createRamBackend
{
  [(BackendXPC *)self backend];
  v5 = (*(*v6 + 40))(v6);
  [(BackendXPC *)self backend];
  v7 = (*(*v4 + 168))(v4);
  v8 = v3;
  sub_1000DEE48();
}

- (RamXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RamXPC;
  if ([(BackendXPC *)&v7 initWithCoder:v4])
  {
    v6 = [v4 decodeInt64ForKey:@"size"];
    [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [objc_claimAutoreleasedReturnValue() getUUIDBytes:v8];
    sub_1000DF30C();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RamXPC;
  [(BackendXPC *)&v8 encodeWithCoder:v4];
  [(BackendXPC *)self backend];
  [v4 encodeInt64:(*(*v6 + 40))() forKey:@"size"];
  if (v7)
  {
    sub_10000367C(v7);
  }

  v5 = [(BackendXPC *)self instanceID];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = RamXPC;
  v3 = [(BackendXPC *)&v8 description];
  [(BackendXPC *)self backend];
  v4 = [NSString stringWithFormat:@"%@[ramsize=%llu]", v3, (*(*v6 + 40))()];
  if (v7)
  {
    sub_10000367C(v7);
  }

  return v4;
}

@end