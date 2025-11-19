@interface CBAODFlipBookWrapper
- ($ADF2D17A2D0006A1E21E182AFD270E1C)header;
- (BOOL)getEntry:(id *)a3 forID:(int64_t)a4;
- (BOOL)isValidEntryID:(int64_t)a3;
- (CBAODFlipBookWrapper)initWithHeader:(id *)a3 andOrigin:(id *)a4;
- (id)description;
- (id)newFlipBookData;
- (void)appendFlipBookEntry:(id *)a3;
- (void)dealloc;
@end

@implementation CBAODFlipBookWrapper

- (CBAODFlipBookWrapper)initWithHeader:(id *)a3 andOrigin:(id *)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9.receiver = self;
  v9.super_class = CBAODFlipBookWrapper;
  v13 = [(CBAODFlipBookWrapper *)&v9 init];
  if (v13)
  {
    v4 = v13;
    *(v13 + 24) = *&a3->var0;
    *(v4 + 39) = *(&a3->var3 + 3);
    memcpy(v13 + 48, a4, 0x4CuLL);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v13 + 1) = v5;
  }

  return v13;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_flipBookData).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBAODFlipBookWrapper;
  [(CBAODFlipBookWrapper *)&v3 dealloc];
}

- (id)description
{
  v26 = self;
  v25 = a2;
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = *(&v26->_header.numberOfUpdates + 3);
  v5 = *(&v26->_header.numberOfUpdates + 1);
  v6 = *(&v26->_header.frequency + 3);
  v7 = [(NSMutableArray *)v26->_flipBookData count];
  ambient = v26->_header.ambient;
  brightness = v26->_origin.brightness;
  brightnessLimit = v26->_origin.brightnessLimit;
  v11 = v26->_origin.whitepoint.matrix[2][2];
  x = v26->_origin.whitepoint.xy.x;
  y = v26->_origin.whitepoint.xy.y;
  pccFactor = v26->_origin.pccFactor;
  twilightStrength = v26->_origin.twilightStrength;
  twilightLux = v26->_origin.twilightLux;
  ammoliteStrength = v26->_origin.ammoliteStrength;
  v18 = *([-[NSMutableArray lastObject](v26->_flipBookData "lastObject")] + 5);
  v19 = *([-[NSMutableArray lastObject](v26->_flipBookData "lastObject")] + 52);
  v20 = *([-[NSMutableArray lastObject](v26->_flipBookData "lastObject")] + 47);
  v21 = *([-[NSMutableArray lastObject](v26->_flipBookData "lastObject")] + 57);
  v22 = *([-[NSMutableArray lastObject](v26->_flipBookData "lastObject")] + 61);
  v23 = *([-[NSMutableArray lastObject](v26->_flipBookData "lastObject")] + 66);
  return [v24 stringWithFormat:@"%@:\nheader  lenght=%f | freq=%u | ambient=%f | count=%lu \norigin  SDR=%f | limit=%f | pcc=%f | wp.x=%f | wp.y=%f | wp.Y=%f | twl = %f | twlLux = %f | aml = %f | amlLux = %f\nfinal   SDR=%f | limit=%f | pcc=%f | twl = %f | twlLux = %f | aml = %f | amlLux = %f", v3, *&v4, v5, *&v6, v7, *&ambient, *&brightness, *&brightnessLimit, *&v11, *&x, *&y, *&pccFactor, *&twilightStrength, *&twilightLux, *&ammoliteStrength, *&v18, *&v19, *&v20, *&v21, *&v22, *&v23, *(objc_msgSend(-[NSMutableArray lastObject](v26->_flipBookData, "lastObject"), "entry") + 70)];
}

- (void)appendFlipBookEntry:(id *)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  a3->var0 = [(NSMutableArray *)self->_flipBookData count];
  v5 = [CBAODFlipBookEntryWrapper alloc];
  memcpy(__dst, v8, sizeof(__dst));
  v7 = [(CBAODFlipBookEntryWrapper *)v5 initWithFlipBookEntry:__dst];
  [(NSMutableArray *)v10->_flipBookData addObject:v7];
  *&v3 = MEMORY[0x1E69E5920](v7).n128_u64[0];
  v4 = [(NSMutableArray *)v10->_flipBookData count];
  *(&v10->_header.sizeOfEntry + 1) = v4;
}

- (BOOL)getEntry:(id *)a3 forID:(int64_t)a4
{
  v6 = 0;
  if ([(CBAODFlipBookWrapper *)self isValidEntryID:a4])
  {
    __src = [-[NSMutableArray objectAtIndex:](self->_flipBookData objectAtIndex:{a4), "entry"}];
    if (__src)
    {
      memcpy(a3, __src, 0x4FuLL);
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

- (BOOL)isValidEntryID:(int64_t)a3
{
  v4 = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    return a3 < [(NSMutableArray *)self->_flipBookData count];
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