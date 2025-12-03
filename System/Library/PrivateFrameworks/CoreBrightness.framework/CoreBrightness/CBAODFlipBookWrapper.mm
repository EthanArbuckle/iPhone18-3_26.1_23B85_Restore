@interface CBAODFlipBookWrapper
- ($ADF2D17A2D0006A1E21E182AFD270E1C)header;
- (BOOL)getEntry:(id *)entry forID:(int64_t)d;
- (BOOL)isValidEntryID:(int64_t)d;
- (CBAODFlipBookWrapper)initWithHeader:(id *)header andOrigin:(id *)origin;
- (id)description;
- (id)newFlipBookData;
- (void)appendFlipBookEntry:(id *)entry;
- (void)dealloc;
@end

@implementation CBAODFlipBookWrapper

- (CBAODFlipBookWrapper)initWithHeader:(id *)header andOrigin:(id *)origin
{
  selfCopy = self;
  v12 = a2;
  headerCopy = header;
  originCopy = origin;
  v9.receiver = self;
  v9.super_class = CBAODFlipBookWrapper;
  selfCopy = [(CBAODFlipBookWrapper *)&v9 init];
  if (selfCopy)
  {
    v4 = selfCopy;
    *(selfCopy + 24) = *&header->var0;
    *(v4 + 39) = *(&header->var3 + 3);
    memcpy(selfCopy + 48, origin, 0x4CuLL);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(selfCopy + 1) = v5;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_flipBookData).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBAODFlipBookWrapper;
  [(CBAODFlipBookWrapper *)&v3 dealloc];
}

- (id)description
{
  selfCopy = self;
  v25 = a2;
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = *(&selfCopy->_header.numberOfUpdates + 3);
  v5 = *(&selfCopy->_header.numberOfUpdates + 1);
  v6 = *(&selfCopy->_header.frequency + 3);
  v7 = [(NSMutableArray *)selfCopy->_flipBookData count];
  ambient = selfCopy->_header.ambient;
  brightness = selfCopy->_origin.brightness;
  brightnessLimit = selfCopy->_origin.brightnessLimit;
  v11 = selfCopy->_origin.whitepoint.matrix[2][2];
  x = selfCopy->_origin.whitepoint.xy.x;
  y = selfCopy->_origin.whitepoint.xy.y;
  pccFactor = selfCopy->_origin.pccFactor;
  twilightStrength = selfCopy->_origin.twilightStrength;
  twilightLux = selfCopy->_origin.twilightLux;
  ammoliteStrength = selfCopy->_origin.ammoliteStrength;
  v18 = *([-[NSMutableArray lastObject](selfCopy->_flipBookData "lastObject")] + 5);
  v19 = *([-[NSMutableArray lastObject](selfCopy->_flipBookData "lastObject")] + 52);
  v20 = *([-[NSMutableArray lastObject](selfCopy->_flipBookData "lastObject")] + 47);
  v21 = *([-[NSMutableArray lastObject](selfCopy->_flipBookData "lastObject")] + 57);
  v22 = *([-[NSMutableArray lastObject](selfCopy->_flipBookData "lastObject")] + 61);
  v23 = *([-[NSMutableArray lastObject](selfCopy->_flipBookData "lastObject")] + 66);
  return [v24 stringWithFormat:@"%@:\nheader  lenght=%f | freq=%u | ambient=%f | count=%lu \norigin  SDR=%f | limit=%f | pcc=%f | wp.x=%f | wp.y=%f | wp.Y=%f | twl = %f | twlLux = %f | aml = %f | amlLux = %f\nfinal   SDR=%f | limit=%f | pcc=%f | twl = %f | twlLux = %f | aml = %f | amlLux = %f", v3, *&v4, v5, *&v6, v7, *&ambient, *&brightness, *&brightnessLimit, *&v11, *&x, *&y, *&pccFactor, *&twilightStrength, *&twilightLux, *&ammoliteStrength, *&v18, *&v19, *&v20, *&v21, *&v22, *&v23, *(objc_msgSend(-[NSMutableArray lastObject](selfCopy->_flipBookData, "lastObject"), "entry") + 70)];
}

- (void)appendFlipBookEntry:(id *)entry
{
  selfCopy = self;
  v9 = a2;
  entryCopy = entry;
  entry->var0 = [(NSMutableArray *)self->_flipBookData count];
  v5 = [CBAODFlipBookEntryWrapper alloc];
  memcpy(__dst, entryCopy, sizeof(__dst));
  v7 = [(CBAODFlipBookEntryWrapper *)v5 initWithFlipBookEntry:__dst];
  [(NSMutableArray *)selfCopy->_flipBookData addObject:v7];
  *&v3 = MEMORY[0x1E69E5920](v7).n128_u64[0];
  v4 = [(NSMutableArray *)selfCopy->_flipBookData count];
  *(&selfCopy->_header.sizeOfEntry + 1) = v4;
}

- (BOOL)getEntry:(id *)entry forID:(int64_t)d
{
  v6 = 0;
  if ([(CBAODFlipBookWrapper *)self isValidEntryID:d])
  {
    __src = [-[NSMutableArray objectAtIndex:](self->_flipBookData objectAtIndex:{d), "entry"}];
    if (__src)
    {
      memcpy(entry, __src, 0x4FuLL);
      return 1;
    }
  }

  return v6;
}

- (id)newFlipBookData
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v4 appendBytes:&self->_header length:23];
  for (i = 0; i < [(NSMutableArray *)self->_flipBookData count]; ++i)
  {
    [v4 appendData:{objc_msgSend(-[NSMutableArray objectAtIndexedSubscript:](self->_flipBookData, "objectAtIndexedSubscript:", i), "entryData")}];
  }

  return v4;
}

- (BOOL)isValidEntryID:(int64_t)d
{
  v4 = 0;
  if ((d & 0x8000000000000000) == 0)
  {
    return d < [(NSMutableArray *)self->_flipBookData count];
  }

  return v4;
}

- ($ADF2D17A2D0006A1E21E182AFD270E1C)header
{
  *&retstr->var0 = *&self->var6;
  *(&retstr->var3 + 3) = *(&self[1].var2 + 3);
  return self;
}

@end