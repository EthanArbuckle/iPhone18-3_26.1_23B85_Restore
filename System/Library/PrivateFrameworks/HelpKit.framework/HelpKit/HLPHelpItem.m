@interface HLPHelpItem
- (HLPHelpItem)initWithDictionary:(id)a3 helpBookURL:(id)a4 serverType:(int64_t)a5;
- (HLPHelpItem)parent;
- (NSString)decodedName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)decodedNameString;
@end

@implementation HLPHelpItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(HLPHelpItem *)self name];
  [v4 setName:v5];

  v6 = [(HLPHelpItem *)self identifier];
  [v4 setIdentifier:v6];

  v7 = [(HLPHelpItem *)self parent];
  [v4 setParent:v7];

  [v4 setLevel:{-[HLPHelpItem level](self, "level")}];
  v8 = [(HLPHelpItem *)self iconURL];
  [v4 setIconURL:v8];

  return v4;
}

- (HLPHelpItem)initWithDictionary:(id)a3 helpBookURL:(id)a4 serverType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = HLPHelpItem;
  v10 = [(HLPHelpItem *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_serverType = a5;
    if (a5)
    {
      v12 = [v8 objectForKeyedSubscript:@"title"];
      name = v11->_name;
      v11->_name = v12;
    }

    else
    {
      v14 = [v8 objectForKeyedSubscript:@"name"];
      v15 = v11->_name;
      v11->_name = v14;

      name = [v8 objectForKeyedSubscript:@"icon"];
      if ([name length])
      {
        v16 = [v9 URLByAppendingPathComponent:name];
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
      v5 = [(HLPHelpItem *)self decodedNameString];
      v6 = self->_decodedName;
      self->_decodedName = v5;

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
    v8 = [v7 string];

    if (v8)
    {
      v9 = [v7 string];

      v2 = v9;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:&stru_2864756F0];
  v4 = [(HLPHelpItem *)self identifier];
  [v3 appendFormat:@"identifier: %@\n", v4];

  v5 = [(HLPHelpItem *)self parent];
  [v3 appendFormat:@"parent: %@\n", v5];

  v6 = [(HLPHelpItem *)self name];
  [v3 appendFormat:@"name: %@\n", v6];

  [v3 appendFormat:@"level: %ld\n", -[HLPHelpItem level](self, "level")];

  return v3;
}

- (HLPHelpItem)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end