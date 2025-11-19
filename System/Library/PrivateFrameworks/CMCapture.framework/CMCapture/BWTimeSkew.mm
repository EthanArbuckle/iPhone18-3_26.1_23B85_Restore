@interface BWTimeSkew
- (BWTimeSkew)initWithNativeTime:(id *)a3 originalTime:(id *)a4 isBracketFrame:(BOOL)a5 isSISFrame:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setAdjusted:(id *)a3;
@end

@implementation BWTimeSkew

- (BWTimeSkew)initWithNativeTime:(id *)a3 originalTime:(id *)a4 isBracketFrame:(BOOL)a5 isSISFrame:(BOOL)a6
{
  v14.receiver = self;
  v14.super_class = BWTimeSkew;
  result = [(BWTimeSkew *)&v14 init];
  if (result)
  {
    v11 = *&a3->var0;
    result->_native.epoch = a3->var3;
    *&result->_native.value = v11;
    v12 = *&a4->var0;
    result->_original.epoch = a4->var3;
    *&result->_original.value = v12;
    v13 = MEMORY[0x1E6960C70];
    *&result->_adjusted.value = *MEMORY[0x1E6960C70];
    result->_adjusted.epoch = *(v13 + 16);
    result->_isBracketFrame = a5;
    result->_isSISFrame = a6;
    result->_isStartOfDiscontinuity = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  v5 = *&self->_native.value;
  *(result + 3) = self->_native.epoch;
  *(result + 8) = v5;
  epoch = self->_original.epoch;
  *(result + 2) = *&self->_original.value;
  *(result + 6) = epoch;
  v7 = self->_adjusted.epoch;
  *(result + 56) = *&self->_adjusted.value;
  *(result + 9) = v7;
  *(result + 80) = self->_isBracketFrame;
  *(result + 81) = self->_isSISFrame;
  *(result + 82) = self->_isStartOfDiscontinuity;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  time = self->_native;
  Seconds = CMTimeGetSeconds(&time);
  time = self->_original;
  v5 = CMTimeGetSeconds(&time);
  time = self->_adjusted;
  v6 = CMTimeGetSeconds(&time);
  if (self->_isStartOfDiscontinuity)
  {
    v7 = 84;
  }

  else
  {
    v7 = 70;
  }

  if (self->_isSISFrame)
  {
    v8 = 84;
  }

  else
  {
    v8 = 70;
  }

  if (self->_isBracketFrame)
  {
    v9 = 84;
  }

  else
  {
    v9 = 70;
  }

  return [v3 stringWithFormat:@"%.4lf:%.4lf:%.4lf:Bracket=%c:SIS=%c:StartsDiscontinuity:%c", *&Seconds, *&v5, *&v6, v9, v8, v7];
}

- (void)setAdjusted:(id *)a3
{
  v3 = *&a3->var0;
  self->_adjusted.epoch = a3->var3;
  *&self->_adjusted.value = v3;
}

@end