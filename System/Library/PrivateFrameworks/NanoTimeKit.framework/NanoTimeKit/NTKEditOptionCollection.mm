@interface NTKEditOptionCollection
+ (NTKEditOptionCollection)editOptionCollectionWithEditMode:(int64_t)mode localizedName:(id)name options:(id)options collectionType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (NSString)optionsDescription;
- (NTKEditOptionCollection)initWithEditMode:(int64_t)mode localizedName:(id)name options:(id)options collectionType:(unint64_t)type slot:(id)slot;
- (id)filteredCollectionForDevice:(id)device;
- (id)filteredCollectionWithObjectsPassingTest:(id)test;
- (int64_t)swatchStyle;
@end

@implementation NTKEditOptionCollection

- (int64_t)swatchStyle
{
  options = [(NTKEditOptionCollection *)self options];
  firstObject = [options firstObject];
  swatchStyle = [firstObject swatchStyle];

  return swatchStyle;
}

- (NSString)optionsDescription
{
  options = [(NTKEditOptionCollection *)self options];
  firstObject = [options firstObject];
  optionsDescription = [objc_opt_class() optionsDescription];

  return optionsDescription;
}

+ (NTKEditOptionCollection)editOptionCollectionWithEditMode:(int64_t)mode localizedName:(id)name options:(id)options collectionType:(unint64_t)type
{
  optionsCopy = options;
  nameCopy = name;
  v12 = [[self alloc] initWithEditMode:mode localizedName:nameCopy options:optionsCopy collectionType:type];

  return v12;
}

- (NTKEditOptionCollection)initWithEditMode:(int64_t)mode localizedName:(id)name options:(id)options collectionType:(unint64_t)type slot:(id)slot
{
  nameCopy = name;
  optionsCopy = options;
  slotCopy = slot;
  v18.receiver = self;
  v18.super_class = NTKEditOptionCollection;
  v15 = [(NTKEditOptionCollection *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(NTKEditOptionCollection *)v15 setMode:mode];
    [(NTKEditOptionCollection *)v16 setLocalizedName:nameCopy];
    [(NTKEditOptionCollection *)v16 setOptions:optionsCopy];
    [(NTKEditOptionCollection *)v16 setCollectionType:type];
    [(NTKEditOptionCollection *)v16 setSlot:slotCopy];
  }

  return v16;
}

- (id)filteredCollectionWithObjectsPassingTest:(id)test
{
  testCopy = test;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  options = [(NTKEditOptionCollection *)self options];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __68__NTKEditOptionCollection_filteredCollectionWithObjectsPassingTest___block_invoke;
  v17 = &unk_278785CA8;
  v18 = v5;
  v19 = testCopy;
  v7 = v5;
  v8 = testCopy;
  [options enumerateObjectsUsingBlock:&v14];

  v9 = [NTKEditOptionCollection alloc];
  v10 = [(NTKEditOptionCollection *)self mode:v14];
  localizedName = [(NTKEditOptionCollection *)self localizedName];
  v12 = [(NTKEditOptionCollection *)v9 initWithEditMode:v10 localizedName:localizedName options:v7 collectionType:[(NTKEditOptionCollection *)self collectionType]];

  return v12;
}

void __68__NTKEditOptionCollection_filteredCollectionWithObjectsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)filteredCollectionForDevice:(id)device
{
  deviceCopy = device;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NTKEditOptionCollection_filteredCollectionForDevice___block_invoke;
  v8[3] = &unk_278785CD0;
  v9 = deviceCopy;
  v5 = deviceCopy;
  v6 = [(NTKEditOptionCollection *)self filteredCollectionWithObjectsPassingTest:v8];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [equalCopy mode] != self->_mode)
  {
    goto LABEL_14;
  }

  localizedName = [equalCopy localizedName];
  v6 = localizedName;
  if (localizedName && self->_localizedName)
  {
    localizedName2 = [equalCopy localizedName];
    localizedName = self->_localizedName;

    if (localizedName2 != localizedName)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  options = [equalCopy options];
  v10 = [options count];
  v11 = [(NSArray *)self->_options count];

  if (v10 != v11)
  {
    goto LABEL_14;
  }

  if ([(NSArray *)self->_options count])
  {
    v12 = 0;
    do
    {
      options2 = [equalCopy options];
      v14 = [options2 objectAtIndexedSubscript:v12];
      v15 = [(NSArray *)self->_options objectAtIndexedSubscript:v12];
      v16 = [v14 isEqual:v15];

      if ((v16 & 1) == 0)
      {
        break;
      }

      ++v12;
    }

    while (v12 < [(NSArray *)self->_options count]);
  }

  else
  {
    v16 = 1;
  }

LABEL_15:

  return v16;
}

@end