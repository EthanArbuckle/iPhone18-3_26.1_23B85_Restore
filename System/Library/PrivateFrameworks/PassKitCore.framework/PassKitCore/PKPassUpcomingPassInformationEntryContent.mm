@interface PKPassUpcomingPassInformationEntryContent
+ (id)_createContentForType:(unint64_t)type;
+ (id)createFromDictionary:(id)dictionary bundle:(id)bundle withEntryType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContent:(id)content;
- (BOOL)populateFromDictionary:(id)dictionary bundle:(id)bundle;
- (PKPassUpcomingPassInformationEntryContent)initWithCoder:(id)coder;
- (PKPassUpcomingPassInformationEntryContentEvent)eventContent;
- (id)_initWithType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpcomingPassInformationEntryContent

+ (id)createFromDictionary:(id)dictionary bundle:(id)bundle withEntryType:(unint64_t)type
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v9 = bundleCopy;
  v10 = 0;
  if (dictionaryCopy && bundleCopy)
  {
    v11 = [PKPassUpcomingPassInformationEntryContent _createContentForType:[PKPassUpcomingPassInformationEntryContent _entryContentTypeForEntryType:type fromDictionary:dictionaryCopy bundle:bundleCopy]];
    v12 = v11;
    if (v11 && [v11 populateFromDictionary:dictionaryCopy bundle:v9])
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)_createContentForType:(unint64_t)type
{
  if (type > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  v5 = [[v4 alloc] _initWithType:type];

  return v5;
}

- (id)_initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKPassUpcomingPassInformationEntryContent;
  result = [(PKPassUpcomingPassInformationEntryContent *)&v5 init];
  if (result)
  {
    *(result + 1) = type;
  }

  return result;
}

- (BOOL)populateFromDictionary:(id)dictionary bundle:(id)bundle
{
  bundleCopy = bundle;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy PKArrayForKey:@"additionalInfoFields"];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __75__PKPassUpcomingPassInformationEntryContent_populateFromDictionary_bundle___block_invoke;
  v36[3] = &unk_1E79CA638;
  v13 = bundleCopy;
  v37 = v13;
  v14 = [v12 pk_createArrayBySafelyApplyingBlock:v36];
  additionalInfoFields = self->_additionalInfoFields;
  self->_additionalInfoFields = v14;

  v16 = [dictionaryCopy PKArrayForKey:@"backFields"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v10;
  }

  v19 = v18;

  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __75__PKPassUpcomingPassInformationEntryContent_populateFromDictionary_bundle___block_invoke_2;
  v34 = &unk_1E79CA638;
  v20 = v13;
  v35 = v20;
  v21 = [v19 pk_createArrayBySafelyApplyingBlock:&v31];

  backFields = self->_backFields;
  self->_backFields = v21;

  v23 = [dictionaryCopy PKArrayForKey:{@"auxiliaryStoreIdentifiers", v31, v32, v33, v34}];
  auxiliaryStoreIdentifiers = self->_auxiliaryStoreIdentifiers;
  self->_auxiliaryStoreIdentifiers = v23;

  v25 = [dictionaryCopy PKDictionaryForKey:@"images"];

  if (v25)
  {
    v26 = [v25 PKDictionaryForKey:@"headerImage"];
    if (v26)
    {
      v27 = [PKPassUpcomingPassInformationImageManifest createFromDictionary:v26 bundle:v20 imageName:@"headerImage" reuseAllowed:0];
      headerManifest = self->_headerManifest;
      self->_headerManifest = v27;

      if (self->_headerManifest)
      {
        v29 = -1;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 1;
  }

  return v29 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPassUpcomingPassInformationEntryContent *)self isEqualToContent:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToContent:(id)content
{
  contentCopy = content;
  if (self->_type != contentCopy[1])
  {
    goto LABEL_17;
  }

  additionalInfoFields = self->_additionalInfoFields;
  v6 = contentCopy[2];
  if (additionalInfoFields)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (additionalInfoFields != v6)
    {
      goto LABEL_17;
    }
  }

  else if (([(NSArray *)additionalInfoFields isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

  backFields = self->_backFields;
  v9 = contentCopy[3];
  if (!backFields || !v9)
  {
    if (backFields == v9)
    {
      goto LABEL_13;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (([(NSArray *)backFields isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  auxiliaryStoreIdentifiers = self->_auxiliaryStoreIdentifiers;
  v11 = contentCopy[4];
  if (auxiliaryStoreIdentifiers && v11)
  {
    v12 = [(NSArray *)auxiliaryStoreIdentifiers isEqual:?];
  }

  else
  {
    v12 = auxiliaryStoreIdentifiers == v11;
  }

LABEL_18:

  return v12;
}

- (PKPassUpcomingPassInformationEntryContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19 = 0;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  if (!v5)
  {
    v19 = 0;
LABEL_7:
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKPassUpcomingPassInformationEntryContent" code:0 userInfo:0];
    [coderCopy failWithError:v7];

    selfCopy = 0;
    goto LABEL_8;
  }

  v6 = v5;
  v20 = 0;
  __PKPassUpcomingPassInformationEntryContentTypeFromString_block_invoke(&v20, v5, 0, &v19);
  __PKPassUpcomingPassInformationEntryContentTypeFromString_block_invoke(&v20, v6, 1, &v19);
  if ((v20 & 1) == 0)
  {
    v19 = 0;

    goto LABEL_7;
  }

  if (v19 > 1 || !objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v10 = [(PKPassUpcomingPassInformationEntryContent *)self _initWithType:v19];
  if (v10)
  {
    v11 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"additionalInfoFields"];
    v12 = v10[2];
    v10[2] = v11;

    v13 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"backFields"];
    v14 = v10[3];
    v10[3] = v13;

    v15 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"auxiliaryStoreIdentifiers"];
    v16 = v10[4];
    v10[4] = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"headerManifest"];
    v18 = v10[5];
    v10[5] = v17;
  }

  self = v10;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  v5 = @"event";
  if (type != 1)
  {
    v5 = 0;
  }

  if (type)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"default";
  }

  coderCopy = coder;
  [coderCopy encodeObject:v6 forKey:@"type"];
  [coderCopy encodeObject:self->_additionalInfoFields forKey:@"additionalInfoFields"];
  [coderCopy encodeObject:self->_backFields forKey:@"backFields"];
  [coderCopy encodeObject:self->_auxiliaryStoreIdentifiers forKey:@"auxiliaryStoreIdentifiers"];
  [coderCopy encodeObject:self->_headerManifest forKey:@"headerManifest"];
}

- (PKPassUpcomingPassInformationEntryContentEvent)eventContent
{
  if (self->_type != 1)
  {
    self = 0;
  }

  return self;
}

@end