@interface MLViewerNodePropertyEnumSPI
- (MLViewerNodePropertyEnumSPI)initWithCoder:(id)coder;
- (MLViewerNodePropertyEnumSPI)initWithJSONDictionary:(id)dictionary;
- (MLViewerNodePropertyEnumSPI)initWithName:(id)name type:(id)type cases:(id)cases value:(unint64_t)value;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLViewerNodePropertyEnumSPI

- (MLViewerNodePropertyEnumSPI)initWithName:(id)name type:(id)type cases:(id)cases value:(unint64_t)value
{
  nameCopy = name;
  typeCopy = type;
  casesCopy = cases;
  v17.receiver = self;
  v17.super_class = MLViewerNodePropertyEnumSPI;
  v14 = [(MLViewerNodePropertyEnumSPI *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_enumCases, cases);
    objc_storeStrong(&v15->_enumType, type);
    v15->_enumValue = value;
  }

  return v15;
}

- (MLViewerNodePropertyEnumSPI)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MLViewerNodePropertyEnumSPI;
  v5 = [(MLViewerNodePropertyEnumSPI *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKey:@"enumCases"];
    enumCases = v5->_enumCases;
    v5->_enumCases = v8;

    v10 = [dictionaryCopy objectForKey:@"enumType"];
    enumType = v5->_enumType;
    v5->_enumType = v10;

    v12 = [dictionaryCopy objectForKey:@"enumValue"];
    v5->_enumValue = [v12 unsignedIntegerValue];
  }

  return v5;
}

- (id)jsonDictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[MLViewerNodePropertyEnumSPI type];
  [dictionary setObject:v4 forKey:@"type"];

  name = [(MLViewerNodePropertyEnumSPI *)self name];
  [dictionary setObject:name forKey:@"name"];

  enumCases = [(MLViewerNodePropertyEnumSPI *)self enumCases];

  if (enumCases)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    enumCases2 = [(MLViewerNodePropertyEnumSPI *)self enumCases];
    v9 = [enumCases2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(enumCases2);
          }

          jsonDictionary = [*(*(&v19 + 1) + 8 * i) jsonDictionary];
          [v7 addObject:jsonDictionary];
        }

        v9 = [enumCases2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v7 forKey:@"enumCases"];
  }

  enumType = [(MLViewerNodePropertyEnumSPI *)self enumType];
  v14 = enumType == 0;

  if (!v14)
  {
    enumType2 = [(MLViewerNodePropertyEnumSPI *)self enumType];
    [dictionary setObject:enumType2 forKey:@"enumType"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MLViewerNodePropertyEnumSPI enumValue](self, "enumValue")}];
  [dictionary setObject:v16 forKey:@"enumValue"];

  v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v17;
}

- (MLViewerNodePropertyEnumSPI)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MLViewerNodePropertyEnumSPI;
  v5 = [(MLViewerNodePropertyEnumSPI *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    enumType = v5->_enumType;
    v5->_enumType = v8;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v10 = allowedClasses(void)::allowedClasses;
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"cases"];
    enumCases = v5->_enumCases;
    v5->_enumCases = v11;

    v5->_enumValue = [coderCopy decodeInt64ForKey:@"value"];
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(MLViewerNodePropertyEnumSPI *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  enumType = [(MLViewerNodePropertyEnumSPI *)self enumType];
  [coderCopy encodeObject:enumType forKey:@"type"];

  enumCases = [(MLViewerNodePropertyEnumSPI *)self enumCases];
  [coderCopy encodeObject:enumCases forKey:@"cases"];

  [coderCopy encodeInt64:-[MLViewerNodePropertyEnumSPI enumValue](self forKey:{"enumValue"), @"value"}];
}

@end