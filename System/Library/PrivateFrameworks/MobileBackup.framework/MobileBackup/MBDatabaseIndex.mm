@interface MBDatabaseIndex
+ (id)databaseIndex;
+ (unint64_t)flagsForMode:(unsigned __int16)a3;
- (BOOL)containsFileID:(id)a3;
- (MBDatabaseIndex)init;
- (NSString)description;
- (id)setFlags:(unint64_t)a3 forFileID:(id)a4;
- (int64_t)offsetForFileID:(id)a3;
- (unint64_t)flagsForFileID:(id)a3;
- (void)setOffset:(unint64_t)a3 flags:(unint64_t)a4 forFileID:(id)a5;
@end

@implementation MBDatabaseIndex

+ (unint64_t)flagsForMode:(unsigned __int16)a3
{
  v3 = a3 & 0xF000;
  v4 = 1;
  v5 = 2;
  if (v3 != 0x4000)
  {
    v5 = 0;
  }

  if (v3 != 0x8000)
  {
    v4 = v5;
  }

  if (v3 == 40960)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

+ (id)databaseIndex
{
  v2 = objc_alloc_init(MBDatabaseIndex);

  return v2;
}

- (MBDatabaseIndex)init
{
  v6.receiver = self;
  v6.super_class = MBDatabaseIndex;
  v2 = [(MBDatabaseIndex *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:0];
    entriesByFileID = v2->_entriesByFileID;
    v2->_entriesByFileID = v3;
  }

  return v2;
}

- (BOOL)containsFileID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_entriesByFileID objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)offsetForFileID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_entriesByFileID objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 offset];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (unint64_t)flagsForFileID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_entriesByFileID objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 flags];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)setFlags:(unint64_t)a3 forFileID:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_entriesByFileID objectForKeyedSubscript:a4];
  [v5 setFlags:{objc_msgSend(v5, "flags") | a3}];

  return 0;
}

- (void)setOffset:(unint64_t)a3 flags:(unint64_t)a4 forFileID:(id)a5
{
  v11 = a5;
  if ([(MBDatabaseIndex *)self offsetForFileID:?]!= -1)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MBDatabaseIndex.m" lineNumber:78 description:{@"Duplicate file ID: %@", v11}];
  }

  v9 = [[MBDatabaseIndexEntry alloc] initWithOffset:a3 flags:a4];
  [(NSMutableDictionary *)self->_entriesByFileID setObject:v9 forKeyedSubscript:v11];
}

- (NSString)description
{
  v3 = objc_opt_class();
  [(MBDatabaseIndex *)self version];
  return [NSString stringWithFormat:@"<%@: version=%0.1f, count=%d>", v3, v4, [(MBDatabaseIndex *)self count]];
}

@end