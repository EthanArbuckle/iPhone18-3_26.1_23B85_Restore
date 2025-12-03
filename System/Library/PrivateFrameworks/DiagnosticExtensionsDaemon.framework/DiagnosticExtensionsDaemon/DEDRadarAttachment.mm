@interface DEDRadarAttachment
- (DEDRadarAttachment)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation DEDRadarAttachment

- (DEDRadarAttachment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = DEDRadarAttachment;
  v5 = [(DEDRadarAttachment *)&v8 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"fileName"];
  if (v6)
  {
    [(DEDRadarAttachment *)v5 setFileName:v6];

LABEL_4:
    v6 = v5;
  }

  return v6;
}

- (id)description
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"fileName";
  fileName = [(DEDRadarAttachment *)self fileName];
  v11[0] = fileName;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"%@: %@", v6, v3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end