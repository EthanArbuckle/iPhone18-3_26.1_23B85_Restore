@interface HLPHelpItem
- (HLPHelpItem)initWithDictionary:(id)dictionary helpBookURL:(id)l serverType:(int64_t)type;
- (HLPHelpItem)parent;
- (NSString)decodedName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)decodedNameString;
@end

@implementation HLPHelpItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(HLPHelpItem *)self name];
  [v4 setName:name];

  identifier = [(HLPHelpItem *)self identifier];
  [v4 setIdentifier:identifier];

  parent = [(HLPHelpItem *)self parent];
  [v4 setParent:parent];

  [v4 setLevel:{-[HLPHelpItem level](self, "level")}];
  iconURL = [(HLPHelpItem *)self iconURL];
  [v4 setIconURL:iconURL];

  return v4;
}

- (HLPHelpItem)initWithDictionary:(id)dictionary helpBookURL:(id)l serverType:(int64_t)type
{
  dictionaryCopy = dictionary;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = HLPHelpItem;
  v10 = [(HLPHelpItem *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_serverType = type;
    if (type)
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"title"];
      name = v11->_name;
      v11->_name = v12;
    }

    else
    {
      v14 = [dictionaryCopy objectForKeyedSubscript:@"name"];
      v15 = v11->_name;
      v11->_name = v14;

      name = [dictionaryCopy objectForKeyedSubscript:@"icon"];
      if ([name length])
      {
        v16 = [lCopy URLByAppendingPathComponent:name];
        iconURL = v11->_iconURL;
        v11->_iconURL = v16;
      }
    }
  }

  return v11;
}

- (NSString)decodedName
{
  v3 = self->_name;
  if (self->_serverType == 1)
  {
    decodedName = self->_decodedName;
    if (!decodedName)
    {
      decodedNameString = [(HLPHelpItem *)self decodedNameString];
      v6 = self->_decodedName;
      self->_decodedName = decodedNameString;

      decodedName = self->_decodedName;
    }

    v7 = decodedName;

    v3 = v7;
  }

  return v3;
}

- (id)decodedNameString
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = self->_name;
  if ([(NSString *)v2 length])
  {
    v3 = [(NSString *)v2 dataUsingEncoding:4];
    v4 = *MEMORY[0x277D740C8];
    v5 = *MEMORY[0x277D74080];
    v12[0] = *MEMORY[0x277D74090];
    v12[1] = v5;
    v13[0] = v4;
    v13[1] = &unk_28647D170;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithData:v3 options:v6 documentAttributes:0 error:0];
    string = [v7 string];

    if (string)
    {
      string2 = [v7 string];

      v2 = string2;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:&stru_2864756F0];
  identifier = [(HLPHelpItem *)self identifier];
  [v3 appendFormat:@"identifier: %@\n", identifier];

  parent = [(HLPHelpItem *)self parent];
  [v3 appendFormat:@"parent: %@\n", parent];

  name = [(HLPHelpItem *)self name];
  [v3 appendFormat:@"name: %@\n", name];

  [v3 appendFormat:@"level: %ld\n", -[HLPHelpItem level](self, "level")];

  return v3;
}

- (HLPHelpItem)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end