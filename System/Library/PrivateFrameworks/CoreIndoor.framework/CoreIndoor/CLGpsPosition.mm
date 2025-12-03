@interface CLGpsPosition
- ($212FAF0442D7AE76F2FFFF4B46B9FEB9)gpsLocation;
- (CLGpsPosition)init;
- (CLGpsPosition)initWithCoder:(id)coder;
- (CLGpsPosition)initWithLocation:(id *)location andPrivateLocation:(id *)privateLocation;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLGpsPosition

- ($212FAF0442D7AE76F2FFFF4B46B9FEB9)gpsLocation
{
  v3 = *&self->var14;
  *&retstr->var11 = self->var13;
  retstr->var13 = v3;
  *&retstr->var14 = *&self->var17;
  *&retstr->var16 = *(&self->var19 + 1);
  v4 = *&self->var7;
  *&retstr->var3 = *&self->var5;
  *&retstr->var5 = v4;
  v5 = *&self->var11;
  *&retstr->var7 = *&self->var9;
  *&retstr->var9 = v5;
  v6 = *&self->var3;
  *&retstr->var0 = *&self->var1.var1;
  *&retstr->var1.var1 = v6;
  return self;
}

- (CLGpsPosition)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (CLGpsPosition)initWithLocation:(id *)location andPrivateLocation:(id *)privateLocation
{
  v18.receiver = self;
  v18.super_class = CLGpsPosition;
  v6 = [(CLGpsPosition *)&v18 init];
  if (v6)
  {
    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v8 = *&location->var1.var1;
    *(v6 + 1) = *&location->var0;
    *(v6 + 2) = v8;
    v9 = *&location->var3;
    v10 = *&location->var5;
    v11 = *&location->var9;
    *(v6 + 5) = *&location->var7;
    *(v6 + 6) = v11;
    *(v6 + 3) = v9;
    *(v6 + 4) = v10;
    v12 = *&location->var11;
    var13 = location->var13;
    v14 = *&location->var14;
    *(v6 + 156) = *&location->var16;
    *(v6 + 8) = var13;
    *(v6 + 9) = v14;
    *(v6 + 7) = v12;
    *&v12 = *&location->var10;
    v15 = v7.__d_.__rep_ + (*&v12 * 1000000000.0);
    if (*&v12 < 0.0)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(v6 + 1) = v15;
    memcpy(v6 + 176, privateLocation, 0x230uLL);
    v16 = v6;
  }

  return v6;
}

- (CLGpsPosition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CLGpsPosition;
  v5 = [(CLGpsPosition *)&v16 init];
  if (v5)
  {
    sub_245A857BC(coderCopy, v15);
    v6 = *(&v15[8] + 12);
    v8 = v15[7];
    v7 = v15[8];
    *(v5 + 7) = v15[6];
    *(v5 + 8) = v8;
    *(v5 + 9) = v7;
    *(v5 + 156) = v6;
    v10 = v15[4];
    v9 = v15[5];
    v11 = v15[3];
    *(v5 + 3) = v15[2];
    *(v5 + 4) = v11;
    *(v5 + 5) = v10;
    *(v5 + 6) = v9;
    v12 = v15[1];
    *(v5 + 1) = v15[0];
    *(v5 + 2) = v12;
    sub_245A85850(coderCopy, v15);
    memcpy(v5 + 176, v15, 0x230uLL);
    *(v5 + 1) = sub_245A8598C(coderCopy);
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sub_245A39754(coderCopy, v4, v5, v6);
  sub_245A39740(coderCopy, v7, v8, v9);
  sub_245A39730(coderCopy, &self->_expiry, v10, v11, v12);
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  objc_msgSend_gpsLocation(self, a2, v2, v3, v4);
  objc_msgSend_gpsLocation(self, v7, v8, v9, v10);
  v14 = objc_msgSend_stringWithFormat_(v6, v11, v16, v12, v13, @"lat/lon=[%lf, %lf]");

  return v14;
}

@end