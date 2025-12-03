@interface NDTodayFeed
- (NDTodayFeed)initWithCoder:(id)coder;
- (NDTodayFeed)initWithConfigData:(id)data publishDate:(id)date contentManifest:(id)manifest contentArchive:(id)archive;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDTodayFeed

- (NDTodayFeed)initWithConfigData:(id)data publishDate:(id)date contentManifest:(id)manifest contentArchive:(id)archive
{
  dataCopy = data;
  dateCopy = date;
  manifestCopy = manifest;
  archiveCopy = archive;
  v20.receiver = self;
  v20.super_class = NDTodayFeed;
  v14 = [(NDTodayFeed *)&v20 init];
  if (v14)
  {
    v15 = [dataCopy copy];
    configData = v14->_configData;
    v14->_configData = v15;

    v17 = [dateCopy copy];
    publishDate = v14->_publishDate;
    v14->_publishDate = v17;

    objc_storeStrong(&v14->_contentManifest, manifest);
    objc_storeStrong(&v14->_contentArchive, archive);
  }

  return v14;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D30F48]) initWithObject:self];
  v4 = MEMORY[0x277CCACA8];
  configData = [(NDTodayFeed *)self configData];
  v6 = [v4 stringWithFormat:@"<%lu bytes>", objc_msgSend(configData, "length")];
  [v3 addField:@"configData" object:v6];

  publishDate = [(NDTodayFeed *)self publishDate];
  [v3 addField:@"publishDate" object:publishDate];

  contentManifest = [(NDTodayFeed *)self contentManifest];
  [v3 addField:@"contentManifest" object:contentManifest];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (NDTodayFeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publishDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentManifest"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentArchive"];

  data = v5;
  if (!v5)
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  date = v6;
  if (!v6)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  empty = v7;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    empty = [MEMORY[0x277D30F10] empty];
    if (v8)
    {
LABEL_7:
      v12 = [(NDTodayFeed *)self initWithConfigData:data publishDate:date contentManifest:empty contentArchive:v8];
      if (v7)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  empty2 = [MEMORY[0x277D30F00] empty];
  v12 = [(NDTodayFeed *)self initWithConfigData:data publishDate:date contentManifest:empty contentArchive:empty2];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  configData = [(NDTodayFeed *)self configData];
  [coderCopy encodeObject:configData forKey:@"configData"];

  publishDate = [(NDTodayFeed *)self publishDate];
  [coderCopy encodeObject:publishDate forKey:@"publishDate"];

  contentManifest = [(NDTodayFeed *)self contentManifest];
  [coderCopy encodeObject:contentManifest forKey:@"contentManifest"];

  contentArchive = [(NDTodayFeed *)self contentArchive];
  [coderCopy encodeObject:contentArchive forKey:@"contentArchive"];
}

@end