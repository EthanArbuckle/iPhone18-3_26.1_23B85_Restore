@interface HFValueSetFormatter
+ (id)formatterWithStringProvider:(id)a3;
- (HFValueSetFormatter)init;
- (HFValueSetFormatter)initWithStringProvider:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation HFValueSetFormatter

+ (id)formatterWithStringProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStringProvider:v4];

  return v5;
}

- (HFValueSetFormatter)init
{
  v5.receiver = self;
  v5.super_class = HFValueSetFormatter;
  v2 = [(HFValueSetFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HFValueSetFormatter *)v2 setUnitStyle:2];
  }

  return v3;
}

- (HFValueSetFormatter)initWithStringProvider:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HFValueSetFormatter.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"provider"}];
  }

  v10.receiver = self;
  v10.super_class = HFValueSetFormatter;
  v6 = [(HFValueSetFormatter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(HFValueSetFormatter *)v6 setStringProvider:v5];
    [(HFValueSetFormatter *)v7 setUnitStyle:2];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HFValueSetFormatter *)self stringProvider];
  v6 = [v4 initWithStringProvider:v5];

  [v6 setUnitStyle:{-[HFValueSetFormatter unitStyle](self, "unitStyle")}];
  return v6;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  v5 = [(HFValueSetFormatter *)self stringProvider];
  if (v5)
  {
    v6 = [(HFValueSetFormatter *)self stringProvider];
    v7 = (v6)[2](v6, v4, [(HFValueSetFormatter *)self unitStyle]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end