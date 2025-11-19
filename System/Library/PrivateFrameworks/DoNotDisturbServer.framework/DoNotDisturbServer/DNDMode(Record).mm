@interface DNDMode(Record)
+ (id)modeForRecord:()Record;
- (DNDSMutableModeRecord)makeRecord;
@end

@implementation DNDMode(Record)

+ (id)modeForRecord:()Record
{
  v3 = a3;
  if (![v3 symbolDescriptorTintStyle])
  {
    v4 = [v3 symbolDescriptorTintColorNames];
    if (v4)
    {
    }

    else
    {
      v5 = [v3 symbolDescriptorImageName];

      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_alloc(MEMORY[0x277D05A58]);
  v7 = [v3 symbolDescriptorTintStyle];
  v8 = [v3 symbolDescriptorTintColorNames];
  v9 = [v3 symbolDescriptorImageName];
  v5 = [v6 initWithTintStyle:v7 tintColorNames:v8 imageName:v9];

LABEL_6:
  v10 = objc_alloc(MEMORY[0x277D05930]);
  v11 = [v3 name];
  v12 = [v3 modeIdentifier];
  v13 = [v3 symbolImageName];
  v14 = [v3 tintColorName];
  v15 = [v3 semanticType];
  v16 = [v3 visibility];
  v17 = [v3 identifier];
  v18 = [v10 initWithName:v11 modeIdentifier:v12 symbolImageName:v13 tintColorName:v14 symbolDescriptor:v5 semanticType:v15 visibility:v16 identifier:v17];

  return v18;
}

- (DNDSMutableModeRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableModeRecord);
  v3 = [a1 _name];
  [(DNDSMutableModeRecord *)v2 setName:v3];

  v4 = [a1 modeIdentifier];
  [(DNDSMutableModeRecord *)v2 setModeIdentifier:v4];

  v5 = [a1 _symbolImageName];
  [(DNDSMutableModeRecord *)v2 setSymbolImageName:v5];

  v6 = [a1 _tintColorName];
  [(DNDSMutableModeRecord *)v2 setTintColorName:v6];

  v7 = [a1 symbolDescriptor];
  -[DNDSMutableModeRecord setSymbolDescriptorTintStyle:](v2, "setSymbolDescriptorTintStyle:", [v7 tintStyle]);

  v8 = [a1 symbolDescriptor];
  v9 = [v8 tintColorNames];
  [(DNDSMutableModeRecord *)v2 setSymbolDescriptorTintColorNames:v9];

  v10 = [a1 symbolDescriptor];
  v11 = [v10 imageName];
  [(DNDSMutableModeRecord *)v2 setSymbolDescriptorImageName:v11];

  -[DNDSMutableModeRecord setSemanticType:](v2, "setSemanticType:", [a1 semanticType]);
  -[DNDSMutableModeRecord setVisibility:](v2, "setVisibility:", [a1 visibility]);
  v12 = [a1 identifier];
  [(DNDSMutableModeRecord *)v2 setIdentifier:v12];

  return v2;
}

@end