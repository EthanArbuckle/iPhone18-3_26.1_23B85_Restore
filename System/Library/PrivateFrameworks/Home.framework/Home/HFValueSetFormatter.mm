@interface HFValueSetFormatter
+ (id)formatterWithStringProvider:(id)provider;
- (HFValueSetFormatter)init;
- (HFValueSetFormatter)initWithStringProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForObjectValue:(id)value;
@end

@implementation HFValueSetFormatter

+ (id)formatterWithStringProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithStringProvider:providerCopy];

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

- (HFValueSetFormatter)initWithStringProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFValueSetFormatter.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"provider"}];
  }

  v10.receiver = self;
  v10.super_class = HFValueSetFormatter;
  v6 = [(HFValueSetFormatter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(HFValueSetFormatter *)v6 setStringProvider:providerCopy];
    [(HFValueSetFormatter *)v7 setUnitStyle:2];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  stringProvider = [(HFValueSetFormatter *)self stringProvider];
  v6 = [v4 initWithStringProvider:stringProvider];

  [v6 setUnitStyle:{-[HFValueSetFormatter unitStyle](self, "unitStyle")}];
  return v6;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  stringProvider = [(HFValueSetFormatter *)self stringProvider];
  if (stringProvider)
  {
    stringProvider2 = [(HFValueSetFormatter *)self stringProvider];
    v7 = (stringProvider2)[2](stringProvider2, valueCopy, [(HFValueSetFormatter *)self unitStyle]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end