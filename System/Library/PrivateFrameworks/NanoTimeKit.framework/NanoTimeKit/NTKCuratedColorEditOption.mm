@interface NTKCuratedColorEditOption
+ (id)_orderedValuesForDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKCuratedColorEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [a1 curatedColorValuesForDevice:v4];
  [v5 addObjectsFromArray:v6];

  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___NTKCuratedColorEditOption;
  v7 = objc_msgSendSuper2(&v14, sel__orderedValuesForDevice_, v4);

  v8 = [v7 mutableCopy];
  [v5 addObjectsFromArray:v8];
  v9 = _orderedValuesForDevice____colors;
  _orderedValuesForDevice____colors = v5;
  v10 = v5;

  v11 = _orderedValuesForDevice____colors;
  v12 = _orderedValuesForDevice____colors;

  return v11;
}

- (id)_valueToFaceBundleStringDict
{
  v12.receiver = self;
  v12.super_class = NTKCuratedColorEditOption;
  v3 = [(NTKFaceColorEditOption *)&v12 _valueToFaceBundleStringDict];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_class();
  v6 = [(NTKEditOption *)self device];
  v7 = [v5 _curatedColorValuesForDevice:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NTKCuratedColorEditOption__valueToFaceBundleStringDict__block_invoke;
  v10[3] = &unk_278783B40;
  v8 = v4;
  v11 = v8;
  [v7 enumerateObjectsUsingBlock:v10];

  return v8;
}

void __57__NTKCuratedColorEditOption__valueToFaceBundleStringDict__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"color %@", v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

@end