@interface DDUIPhysicalUnitGroup
- (DDUIPhysicalUnitGroup)initWithName:(id)name units:(id)units restricted:(BOOL)restricted symbol:(id)symbol;
- (id)symbolNameForValue:(double)value unit:(id)unit;
@end

@implementation DDUIPhysicalUnitGroup

- (DDUIPhysicalUnitGroup)initWithName:(id)name units:(id)units restricted:(BOOL)restricted symbol:(id)symbol
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  unitsCopy = units;
  symbolCopy = symbol;
  v27.receiver = self;
  v27.super_class = DDUIPhysicalUnitGroup;
  v14 = [(DDUIPhysicalUnitGroup *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_units, units);
    v15->_restrictedLinkification = restricted;
    objc_storeStrong(&v15->_symbol, symbol);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = unitsCopy;
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

- (id)symbolNameForValue:(double)value unit:(id)unit
{
  unitCopy = unit;
  p_isa = self->_symbol;
  group = [unitCopy group];
  if (group != self)
  {
    goto LABEL_2;
  }

  v10 = [(NSString *)p_isa isEqualToString:@"thermometer"];

  if (v10)
  {
    v11 = [DDUIPhysicalUnit unitWithIdentifier:@"celsius"];
    group = v11;
    if (v11)
    {
      [(DDUIPhysicalUnitGroup *)v11 valueFrom:unitCopy unit:value];
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