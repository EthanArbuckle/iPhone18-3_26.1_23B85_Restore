@interface NDTodayFeed
- (NDTodayFeed)initWithCoder:(id)a3;
- (NDTodayFeed)initWithConfigData:(id)a3 publishDate:(id)a4 contentManifest:(id)a5 contentArchive:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDTodayFeed

- (NDTodayFeed)initWithConfigData:(id)a3 publishDate:(id)a4 contentManifest:(id)a5 contentArchive:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = NDTodayFeed;
  v14 = [(NDTodayFeed *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    configData = v14->_configData;
    v14->_configData = v15;

    v17 = [v11 copy];
    publishDate = v14->_publishDate;
    v14->_publishDate = v17;

    objc_storeStrong(&v14->_contentManifest, a5);
    objc_storeStrong(&v14->_contentArchive, a6);
  }

  return v14;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D30F48]) initWithObject:self];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(NDTodayFeed *)self configData];
  v6 = [v4 stringWithFormat:@"<%lu bytes>", objc_msgSend(v5, "length")];
  [v3 addField:@"configData" object:v6];

  v7 = [(NDTodayFeed *)self publishDate];
  [v3 addField:@"publishDate" object:v7];

  v8 = [(NDTodayFeed *)self contentManifest];
  [v3 addField:@"contentManifest" object:v8];

  v9 = [v3 descriptionString];

  return v9;
}

- (NDTodayFeed)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publishDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentManifest"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentArchive"];

  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x277CBEA90] data];
  }

  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
  }

  v11 = v7;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [MEMORY[0x277D30F10] empty];
    if (v8)
    {
LABEL_7:
      v12 = [(NDTodayFeed *)self initWithConfigData:v9 publishDate:v10 contentManifest:v11 contentArchive:v8];
      if (v7)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v14 = [MEMORY[0x277D30F00] empty];
  v12 = [(NDTodayFeed *)self initWithConfigData:v9 publishDate:v10 contentManifest:v11 contentArchive:v14];

  if (!v7)
  {
LABEL_8:
  }

LABEL_9:
  if (!v6)
  {

    if (v5)
    {
      goto LABEL_11;
    }

LABEL_16:

    goto LABEL_11;
  }

  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_11:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NDTodayFeed *)self configData];
  [v4 encodeObject:v5 forKey:@"configData"];

  v6 = [(NDTodayFeed *)self publishDate];
  [v4 encodeObject:v6 forKey:@"publishDate"];

  v7 = [(NDTodayFeed *)self contentManifest];
  [v4 encodeObject:v7 forKey:@"contentManifest"];

  v8 = [(NDTodayFeed *)self contentArchive];
  [v4 encodeObject:v8 forKey:@"contentArchive"];
}

@end