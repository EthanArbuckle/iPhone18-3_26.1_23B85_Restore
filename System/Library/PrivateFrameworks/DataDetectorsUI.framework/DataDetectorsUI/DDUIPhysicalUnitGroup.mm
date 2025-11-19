@interface DDUIPhysicalUnitGroup
- (DDUIPhysicalUnitGroup)initWithName:(id)a3 units:(id)a4 restricted:(BOOL)a5 symbol:(id)a6;
- (id)symbolNameForValue:(double)a3 unit:(id)a4;
@end

@implementation DDUIPhysicalUnitGroup

- (DDUIPhysicalUnitGroup)initWithName:(id)a3 units:(id)a4 restricted:(BOOL)a5 symbol:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = DDUIPhysicalUnitGroup;
  v14 = [(DDUIPhysicalUnitGroup *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_units, a4);
    v15->_restrictedLinkification = a5;
    objc_storeStrong(&v15->_symbol, a6);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v12;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v23 + 1) + 8 * v20++) setGroup:{v15, v23}];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)symbolNameForValue:(double)a3 unit:(id)a4
{
  v6 = a4;
  p_isa = self->_symbol;
  v8 = [v6 group];
  if (v8 != self)
  {
    goto LABEL_2;
  }

  v10 = [(NSString *)p_isa isEqualToString:@"thermometer"];

  if (v10)
  {
    v11 = [DDUIPhysicalUnit unitWithIdentifier:@"celsius"];
    v8 = v11;
    if (v11)
    {
      [(DDUIPhysicalUnitGroup *)v11 valueFrom:v6 unit:a3];
      if (v12 <= 0.0)
      {
        v13 = @"thermometer.snowflake";
        goto LABEL_12;
      }

      if (v12 >= 30.0)
      {
        v13 = @"thermometer.sun";
LABEL_12:

        p_isa = &v13->isa;
      }
    }

LABEL_2:
  }

  return p_isa;
}

@end