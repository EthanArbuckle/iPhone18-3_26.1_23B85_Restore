@interface TDRenditionSpec
- (BOOL)canBePackedWithDocument:(id)a3;
- (CGPoint)packedPoint;
- (TDRenditionType)renditionType;
- (id)propertiesAsDictionary;
- (void)awakeFromInsert;
- (void)resetToBaseKeySpec;
- (void)setPackedPoint:(CGPoint)a3;
- (void)setRenditionType:(id)a3;
@end

@implementation TDRenditionSpec

- (void)awakeFromInsert
{
  if (![(TDRenditionSpec *)self keySpec])
  {
    v3 = -[TDRenditionKeySpec initWithEntity:insertIntoManagedObjectContext:]([TDRenditionKeySpec alloc], "initWithEntity:insertIntoManagedObjectContext:", [objc_msgSend(objc_msgSend(-[TDRenditionSpec entity](self "entity")], -[TDRenditionSpec managedObjectContext](self, "managedObjectContext"));
    [(TDRenditionSpec *)self setKeySpec:v3];
  }
}

- (void)resetToBaseKeySpec
{
  if ([(TDRenditionSpec *)self production]&& [(TDRenditionSpec *)self keySpec])
  {
    v3 = [objc_msgSend(-[TDRenditionSpec production](self "production")];
    v4 = [(TDRenditionSpec *)self keySpec];

    [v4 setValuesForKeysWithDictionary:v3];
  }
}

- (id)propertiesAsDictionary
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(TDRenditionSpec *)self properties];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) addToDictionary:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (TDRenditionType)renditionType
{
  [(TDRenditionSpec *)self willAccessValueForKey:@"renditionType"];
  v3 = [(TDRenditionSpec *)self primitiveRenditionType];
  [(TDRenditionSpec *)self didAccessValueForKey:@"renditionType"];
  if (v3)
  {
    return v3;
  }

  v5 = [(TDRenditionSpec *)self production];

  return [v5 renditionType];
}

- (void)setRenditionType:(id)a3
{
  v5 = [a3 identifier];
  if (v5 == [objc_msgSend(-[TDRenditionSpec production](self "production")] || v5 == 1010 || v5 == 6)
  {
    [(TDRenditionSpec *)self willChangeValueForKey:@"renditionType"];
    [(TDRenditionSpec *)self setPrimitiveRenditionType:a3];

    [(TDRenditionSpec *)self didChangeValueForKey:@"renditionType"];
  }

  else if ([(TDRenditionSpec *)self production])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"Incompatible rendition type '%@'.  Must gradient or multisize image set.", objc_msgSend(objc_msgSend(-[TDRenditionSpec production](self, "production"), "name"), "name")}];
  }

  else
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE648];

    [v6 raise:v7 format:@"Missing production."];
  }
}

- (void)setPackedPoint:(CGPoint)a3
{
  y = a3.y;
  [(TDRenditionSpec *)self setPackedPointX:a3.x];

  [(TDRenditionSpec *)self setPackedPointY:y];
}

- (CGPoint)packedPoint
{
  v3 = [(TDRenditionSpec *)self packedPointX];
  v4 = [(TDRenditionSpec *)self packedPointY];
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (BOOL)canBePackedWithDocument:(id)a3
{
  v4 = [(TDRenditionSpec *)self width];
  v5 = [(TDRenditionSpec *)self height];
  result = 0;
  if (v4 && v5)
  {
    v7 = [-[TDRenditionSpec keySpec](self "keySpec")];
    if (([(TDRenditionSpec *)self alphaCrop]& 1) == 0 && v5 * v4 > [CoreThemeDocument maximumAreaOfPackableImageForScale:v7])
    {
      return 0;
    }

    v8 = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
    v9 = v8;
    if (v8 > 9)
    {
      return 0;
    }

    result = 1;
    if (((1 << v9) & 0x13F) == 0)
    {
      return 0;
    }
  }

  return result;
}

@end