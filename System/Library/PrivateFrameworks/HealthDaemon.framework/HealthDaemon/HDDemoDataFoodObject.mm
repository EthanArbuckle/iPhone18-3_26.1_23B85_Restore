@interface HDDemoDataFoodObject
- (BOOL)isEqual:(id)equal;
- (HDDemoDataFoodObject)initWithBrandName:(id)name genericName:(id)genericName foodType:(int64_t)type nutritionFacts:(id)facts;
- (HDDemoDataFoodObject)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDDemoDataFoodObject

- (HDDemoDataFoodObject)initWithBrandName:(id)name genericName:(id)genericName foodType:(int64_t)type nutritionFacts:(id)facts
{
  nameCopy = name;
  genericNameCopy = genericName;
  factsCopy = facts;
  v17.receiver = self;
  v17.super_class = HDDemoDataFoodObject;
  v14 = [(HDDemoDataFoodObject *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_brandName, name);
    objc_storeStrong(&v15->_genericName, genericName);
    v15->_foodType = type;
    v15->_recommendedNumServings = 1.0;
    objc_storeStrong(&v15->_nutritionFacts, facts);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  brandName = self->_brandName;
  genericName = self->_genericName;
  v6 = NSStringFromHDDemoDataFoodType(self->_foodType);
  v7 = [v3 stringWithFormat:@"Brand name: %@\nGeneric name: %@\nFood type: %@\nRecommend Serving: %.1f\nNutrion facts: %@", brandName, genericName, v6, *&self->_recommendedNumServings, self->_nutritionFacts];

  return v7;
}

- (HDDemoDataFoodObject)initWithCoder:(id)coder
{
  v19[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HDDemoDataFoodObject;
  v5 = [(HDDemoDataFoodObject *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataFoodObjectBrandNameKey"];
    brandName = v5->_brandName;
    v5->_brandName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataFoodObjectGenericNameKey"];
    genericName = v5->_genericName;
    v5->_genericName = v8;

    v5->_foodType = [coderCopy decodeIntegerForKey:@"HDDemoDataFoodObjectFoodTypeKey"];
    v10 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"HDDemoDataFoodObjectNutritionFactsKey"];
    nutritionFacts = v5->_nutritionFacts;
    v5->_nutritionFacts = v13;

    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodObjectRecommendedServingsKey"];
    v5->_recommendedNumServings = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  brandName = self->_brandName;
  coderCopy = coder;
  [coderCopy encodeObject:brandName forKey:@"HDDemoDataFoodObjectBrandNameKey"];
  [coderCopy encodeObject:self->_genericName forKey:@"HDDemoDataFoodObjectGenericNameKey"];
  [coderCopy encodeInteger:self->_foodType forKey:@"HDDemoDataFoodObjectFoodTypeKey"];
  [coderCopy encodeObject:self->_nutritionFacts forKey:@"HDDemoDataFoodObjectNutritionFactsKey"];
  [coderCopy encodeDouble:@"HDDemoDataFoodObjectRecommendedServingsKey" forKey:self->_recommendedNumServings];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      v8 = v7;
      v9 = 0;
      if (!self || !v7)
      {
        goto LABEL_26;
      }

      brandName = [(HDDemoDataFoodObject *)self brandName];
      if (brandName || ([(HDDemoDataFoodObject *)v8 brandName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        brandName2 = [(HDDemoDataFoodObject *)self brandName];
        brandName3 = [(HDDemoDataFoodObject *)v8 brandName];
        v12 = [brandName2 isEqualToString:brandName3];

        if (brandName)
        {
LABEL_13:

          genericName = [(HDDemoDataFoodObject *)self genericName];
          if (genericName || ([(HDDemoDataFoodObject *)v8 genericName], (brandName2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            genericName2 = [(HDDemoDataFoodObject *)self genericName];
            genericName3 = [(HDDemoDataFoodObject *)v8 genericName];
            v33 = [genericName2 isEqualToString:genericName3];

            if (genericName)
            {
LABEL_19:

              v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDDemoDataFoodObject foodType](self, "foodType")}];
              v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDDemoDataFoodObject foodType](v8, "foodType")}];
              v18 = [v16 isEqualToNumber:v17];

              nutritionFacts = [(HDDemoDataFoodObject *)self nutritionFacts];
              if (nutritionFacts || ([(HDDemoDataFoodObject *)v8 nutritionFacts], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                [(HDDemoDataFoodObject *)self nutritionFacts];
                v20 = v18;
                v22 = v21 = v12;
                nutritionFacts2 = [(HDDemoDataFoodObject *)v8 nutritionFacts];
                v24 = [v22 isEqualToDictionary:nutritionFacts2];

                v12 = v21;
                v18 = v20;
                if (nutritionFacts)
                {
LABEL_25:

                  v25 = MEMORY[0x277CCABB0];
                  [(HDDemoDataFoodObject *)self recommendedNumServings];
                  v26 = [v25 numberWithDouble:?];
                  v27 = MEMORY[0x277CCABB0];
                  [(HDDemoDataFoodObject *)v8 recommendedNumServings];
                  v28 = [v27 numberWithDouble:?];
                  v29 = [v26 isEqualToNumber:v28];

                  v9 = v12 & v33 & v24 & v18 & v29;
LABEL_26:

                  goto LABEL_27;
                }
              }

              else
              {
                v32 = 0;
                v24 = 1;
              }

              goto LABEL_25;
            }
          }

          else
          {
            v33 = 1;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v12 = 1;
      }

      goto LABEL_13;
    }

    v9 = 0;
  }

LABEL_27:

  return v9;
}

- (unint64_t)hash
{
  brandName = [(HDDemoDataFoodObject *)self brandName];
  v4 = [brandName hash];
  genericName = [(HDDemoDataFoodObject *)self genericName];
  v6 = [genericName hash] ^ v4;
  nutritionFacts = [(HDDemoDataFoodObject *)self nutritionFacts];
  v8 = [nutritionFacts hash];
  v9 = v8 + 32 * [(HDDemoDataFoodObject *)self foodType];
  [(HDDemoDataFoodObject *)self recommendedNumServings];
  v11 = v9 + v10;

  return v6 ^ v11;
}

@end