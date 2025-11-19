@interface HDDemoDataFoodObject
- (BOOL)isEqual:(id)a3;
- (HDDemoDataFoodObject)initWithBrandName:(id)a3 genericName:(id)a4 foodType:(int64_t)a5 nutritionFacts:(id)a6;
- (HDDemoDataFoodObject)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDDemoDataFoodObject

- (HDDemoDataFoodObject)initWithBrandName:(id)a3 genericName:(id)a4 foodType:(int64_t)a5 nutritionFacts:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HDDemoDataFoodObject;
  v14 = [(HDDemoDataFoodObject *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_brandName, a3);
    objc_storeStrong(&v15->_genericName, a4);
    v15->_foodType = a5;
    v15->_recommendedNumServings = 1.0;
    objc_storeStrong(&v15->_nutritionFacts, a6);
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

- (HDDemoDataFoodObject)initWithCoder:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HDDemoDataFoodObject;
  v5 = [(HDDemoDataFoodObject *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataFoodObjectBrandNameKey"];
    brandName = v5->_brandName;
    v5->_brandName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataFoodObjectGenericNameKey"];
    genericName = v5->_genericName;
    v5->_genericName = v8;

    v5->_foodType = [v4 decodeIntegerForKey:@"HDDemoDataFoodObjectFoodTypeKey"];
    v10 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"HDDemoDataFoodObjectNutritionFactsKey"];
    nutritionFacts = v5->_nutritionFacts;
    v5->_nutritionFacts = v13;

    [v4 decodeDoubleForKey:@"HDDemoDataFoodObjectRecommendedServingsKey"];
    v5->_recommendedNumServings = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  brandName = self->_brandName;
  v5 = a3;
  [v5 encodeObject:brandName forKey:@"HDDemoDataFoodObjectBrandNameKey"];
  [v5 encodeObject:self->_genericName forKey:@"HDDemoDataFoodObjectGenericNameKey"];
  [v5 encodeInteger:self->_foodType forKey:@"HDDemoDataFoodObjectFoodTypeKey"];
  [v5 encodeObject:self->_nutritionFacts forKey:@"HDDemoDataFoodObjectNutritionFactsKey"];
  [v5 encodeDouble:@"HDDemoDataFoodObjectRecommendedServingsKey" forKey:self->_recommendedNumServings];
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = v7;
      v9 = 0;
      if (!self || !v7)
      {
        goto LABEL_26;
      }

      v10 = [(HDDemoDataFoodObject *)self brandName];
      if (v10 || ([(HDDemoDataFoodObject *)v8 brandName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v4 = [(HDDemoDataFoodObject *)self brandName];
        v11 = [(HDDemoDataFoodObject *)v8 brandName];
        v12 = [v4 isEqualToString:v11];

        if (v10)
        {
LABEL_13:

          v13 = [(HDDemoDataFoodObject *)self genericName];
          if (v13 || ([(HDDemoDataFoodObject *)v8 genericName], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v14 = [(HDDemoDataFoodObject *)self genericName];
            v15 = [(HDDemoDataFoodObject *)v8 genericName];
            v33 = [v14 isEqualToString:v15];

            if (v13)
            {
LABEL_19:

              v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDDemoDataFoodObject foodType](self, "foodType")}];
              v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDDemoDataFoodObject foodType](v8, "foodType")}];
              v18 = [v16 isEqualToNumber:v17];

              v19 = [(HDDemoDataFoodObject *)self nutritionFacts];
              if (v19 || ([(HDDemoDataFoodObject *)v8 nutritionFacts], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                [(HDDemoDataFoodObject *)self nutritionFacts];
                v20 = v18;
                v22 = v21 = v12;
                v23 = [(HDDemoDataFoodObject *)v8 nutritionFacts];
                v24 = [v22 isEqualToDictionary:v23];

                v12 = v21;
                v18 = v20;
                if (v19)
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
  v3 = [(HDDemoDataFoodObject *)self brandName];
  v4 = [v3 hash];
  v5 = [(HDDemoDataFoodObject *)self genericName];
  v6 = [v5 hash] ^ v4;
  v7 = [(HDDemoDataFoodObject *)self nutritionFacts];
  v8 = [v7 hash];
  v9 = v8 + 32 * [(HDDemoDataFoodObject *)self foodType];
  [(HDDemoDataFoodObject *)self recommendedNumServings];
  v11 = v9 + v10;

  return v6 ^ v11;
}

@end