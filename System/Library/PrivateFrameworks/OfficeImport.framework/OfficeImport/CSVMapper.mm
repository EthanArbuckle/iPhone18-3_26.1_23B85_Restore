@interface CSVMapper
- (CGSize)pageSize;
- (CSVMapper)initWithRows:(id)rows fileName:(id)name columnCount:(unint64_t)count archiver:(id)archiver;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CSVMapper

- (CSVMapper)initWithRows:(id)rows fileName:(id)name columnCount:(unint64_t)count archiver:(id)archiver
{
  rowsCopy = rows;
  nameCopy = name;
  archiverCopy = archiver;
  v17.receiver = self;
  v17.super_class = CSVMapper;
  v14 = [(CMMapper *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mRows, rows);
    objc_storeStrong(&v15->super.mArchiver, archiver);
    objc_storeStrong(&v15->mFileName, name);
    v15->mColumnCount = count;
    objc_storeStrong(&v15->mFileName, name);
  }

  return v15;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  lastPathComponent = [(NSString *)self->mFileName lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v8 = [CMXmlUtils copyHeadElementWithTitle:stringByDeletingPathExtension];

  [atCopy addChild:v8];
  v9 = [OIXMLElement elementWithType:17 stringValue:@"body\n{\nfont: 10px Verdana\n}\ntable\n{\nborder-collapse: collapse;\n}\ntd\n{\nfont-family:Verdana, Arial;\nfont-size:10;\nborder: solid 1px;\npadding: 5px;\nwhite-space:nowrap;\nborder-color: #DDDDDD;\n}\n"];;
  v10 = [OIXMLAttribute attributeWithName:0x286F007F0 stringValue:0x286F07970];
  [v9 addAttribute:v10];

  [atCopy addChild:v9];
  v19 = [OIXMLElement elementWithType:1];
  [atCopy addChild:v19];
  v11 = [OIXMLElement elementWithType:18];
  v21 = v9;
  v22 = v8;
  [v19 addChild:v11];
  while ([(NSMutableArray *)self->mRows count])
  {
    v12 = [(NSMutableArray *)self->mRows objectAtIndex:0];
    v13 = [[OIXMLElement alloc] initWithType:21 stringValue:0];
    [v11 addChild:v13];
    if (self->mColumnCount)
    {
      v14 = 0;
      do
      {
        if (v14 >= [v12 count])
        {
          v15 = 0;
        }

        else
        {
          v15 = [v12 objectAtIndex:v14];
        }

        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = &stru_286EE1130;
        }

        v17 = [OIXMLElement elementWithType:19 stringValue:v16];
        [(OIXMLElement *)v13 addChild:v17];

        ++v14;
      }

      while (v14 < self->mColumnCount);
    }

    [(NSMutableArray *)self->mRows removeObjectAtIndex:0];

    v9 = v21;
    v8 = v22;
  }
}

- (CGSize)pageSize
{
  width = self->mPageSize.width;
  height = self->mPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end