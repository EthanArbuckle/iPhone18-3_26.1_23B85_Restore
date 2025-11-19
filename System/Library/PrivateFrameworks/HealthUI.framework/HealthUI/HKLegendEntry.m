@interface HKLegendEntry
+ (id)legendEntryWithTitle:(id)a3 dotColor:(id)a4 innerDotColor:(id)a5;
+ (id)legendEntryWithTitle:(id)a3 icon:(id)a4 iconTint:(id)a5;
+ (id)legendEntryWithTitle:(id)a3 labelColor:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HKLegendEntry)initWithTitle:(id)a3 dotColor:(id)a4 innerDotColor:(id)a5 labelColor:(id)a6 icon:(id)a7 iconTint:(id)a8;
@end

@implementation HKLegendEntry

+ (id)legendEntryWithTitle:(id)a3 dotColor:(id)a4 innerDotColor:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HKLegendEntry alloc] initWithTitle:v9 dotColor:v8 innerDotColor:v7 labelColor:0 icon:0 iconTint:0];

  return v10;
}

+ (id)legendEntryWithTitle:(id)a3 labelColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HKLegendEntry alloc] initWithTitle:v6 dotColor:0 innerDotColor:0 labelColor:v5 icon:0 iconTint:0];

  return v7;
}

+ (id)legendEntryWithTitle:(id)a3 icon:(id)a4 iconTint:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HKLegendEntry alloc] initWithTitle:v9 dotColor:0 innerDotColor:0 labelColor:0 icon:v8 iconTint:v7];

  return v10;
}

- (HKLegendEntry)initWithTitle:(id)a3 dotColor:(id)a4 innerDotColor:(id)a5 labelColor:(id)a6 icon:(id)a7 iconTint:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v23.receiver = self;
  v23.super_class = HKLegendEntry;
  v20 = [(HKLegendEntry *)&v23 init];
  v21 = v20;
  if (v20)
  {
    [(HKLegendEntry *)v20 setTitle:v14];
    [(HKLegendEntry *)v21 setDotColor:v15];
    [(HKLegendEntry *)v21 setInnerDotColor:v16];
    [(HKLegendEntry *)v21 setLabelColor:v17];
    [(HKLegendEntry *)v21 setIcon:v18];
    [(HKLegendEntry *)v21 setIconTint:v19];
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(HKLegendEntry *)self title];
  v6 = [v4 title];
  if (v5 == v6)
  {
    v10 = 0;
  }

  else
  {
    v7 = [(HKLegendEntry *)self title];
    v8 = [v4 title];
    v9 = [v7 isEqual:v8];

    v10 = v9 ^ 1;
  }

  v11 = [(HKLegendEntry *)self dotColor];
  v12 = [v4 dotColor];
  if (v11 == v12)
  {
    v16 = 0;
  }

  else
  {
    v13 = [(HKLegendEntry *)self dotColor];
    v14 = [v4 dotColor];
    v15 = [v13 isEqual:v14];

    v16 = v15 ^ 1;
  }

  v17 = [(HKLegendEntry *)self labelColor];
  v18 = [v4 labelColor];
  if (v17 == v18)
  {
    v21 = 1;
  }

  else
  {
    v19 = [(HKLegendEntry *)self labelColor];
    v20 = [v4 labelColor];
    v21 = [v19 isEqual:v20];
  }

  v22 = [(HKLegendEntry *)self icon];
  v23 = [v4 icon];

  if ((v10 | v16))
  {
    v24 = 0;
  }

  else if (v22 == v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end