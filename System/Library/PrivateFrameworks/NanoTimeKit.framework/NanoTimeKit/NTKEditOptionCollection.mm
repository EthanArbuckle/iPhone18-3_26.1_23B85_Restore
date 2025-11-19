@interface NTKEditOptionCollection
+ (NTKEditOptionCollection)editOptionCollectionWithEditMode:(int64_t)a3 localizedName:(id)a4 options:(id)a5 collectionType:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)optionsDescription;
- (NTKEditOptionCollection)initWithEditMode:(int64_t)a3 localizedName:(id)a4 options:(id)a5 collectionType:(unint64_t)a6 slot:(id)a7;
- (id)filteredCollectionForDevice:(id)a3;
- (id)filteredCollectionWithObjectsPassingTest:(id)a3;
- (int64_t)swatchStyle;
@end

@implementation NTKEditOptionCollection

- (int64_t)swatchStyle
{
  v2 = [(NTKEditOptionCollection *)self options];
  v3 = [v2 firstObject];
  v4 = [v3 swatchStyle];

  return v4;
}

- (NSString)optionsDescription
{
  v2 = [(NTKEditOptionCollection *)self options];
  v3 = [v2 firstObject];
  v4 = [objc_opt_class() optionsDescription];

  return v4;
}

+ (NTKEditOptionCollection)editOptionCollectionWithEditMode:(int64_t)a3 localizedName:(id)a4 options:(id)a5 collectionType:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [[a1 alloc] initWithEditMode:a3 localizedName:v11 options:v10 collectionType:a6];

  return v12;
}

- (NTKEditOptionCollection)initWithEditMode:(int64_t)a3 localizedName:(id)a4 options:(id)a5 collectionType:(unint64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = NTKEditOptionCollection;
  v15 = [(NTKEditOptionCollection *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(NTKEditOptionCollection *)v15 setMode:a3];
    [(NTKEditOptionCollection *)v16 setLocalizedName:v12];
    [(NTKEditOptionCollection *)v16 setOptions:v13];
    [(NTKEditOptionCollection *)v16 setCollectionType:a6];
    [(NTKEditOptionCollection *)v16 setSlot:v14];
  }

  return v16;
}

- (id)filteredCollectionWithObjectsPassingTest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(NTKEditOptionCollection *)self options];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __68__NTKEditOptionCollection_filteredCollectionWithObjectsPassingTest___block_invoke;
  v17 = &unk_278785CA8;
  v18 = v5;
  v19 = v4;
  v7 = v5;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:&v14];

  v9 = [NTKEditOptionCollection alloc];
  v10 = [(NTKEditOptionCollection *)self mode:v14];
  v11 = [(NTKEditOptionCollection *)self localizedName];
  v12 = [(NTKEditOptionCollection *)v9 initWithEditMode:v10 localizedName:v11 options:v7 collectionType:[(NTKEditOptionCollection *)self collectionType]];

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

- (id)filteredCollectionForDevice:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NTKEditOptionCollection_filteredCollectionForDevice___block_invoke;
  v8[3] = &unk_278785CD0;
  v9 = v4;
  v5 = v4;
  v6 = [(NTKEditOptionCollection *)self filteredCollectionWithObjectsPassingTest:v8];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v4 mode] != self->_mode)
  {
    goto LABEL_14;
  }

  v5 = [v4 localizedName];
  v6 = v5;
  if (v5 && self->_localizedName)
  {
    v7 = [v4 localizedName];
    localizedName = self->_localizedName;

    if (v7 != localizedName)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v9 = [v4 options];
  v10 = [v9 count];
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
      v13 = [v4 options];
      v14 = [v13 objectAtIndexedSubscript:v12];
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