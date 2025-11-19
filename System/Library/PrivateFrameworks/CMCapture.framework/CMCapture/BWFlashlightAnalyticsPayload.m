@interface BWFlashlightAnalyticsPayload
- (id)eventDictionary;
- (void)reset;
- (void)setBeamWidthUsage:(int64_t)a3[11];
- (void)setLevelUsage:(int64_t)a3[11];
@end

@implementation BWFlashlightAnalyticsPayload

- (void)reset
{
  self->_luxLevel = 0x7FFFFFFF;
  *self->_levelUsage = 0u;
  *&self->_levelUsage[2] = 0u;
  *&self->_levelUsage[4] = 0u;
  *&self->_levelUsage[6] = 0u;
  *&self->_levelUsage[8] = 0u;
  self->_levelUsage[10] = 0;
  *self->_beamWidthUsage = 0u;
  *&self->_beamWidthUsage[2] = 0u;
  *&self->_beamWidthUsage[4] = 0u;
  *&self->_beamWidthUsage[6] = 0u;
  *&self->_beamWidthUsage[8] = 0u;
  self->_beamWidthUsage[10] = 0;
}

- (void)setLevelUsage:(int64_t)a3[11]
{
  v3 = *(a3 + 1);
  *self->_levelUsage = *a3;
  *&self->_levelUsage[2] = v3;
  v4 = *(a3 + 2);
  v5 = *(a3 + 3);
  v6 = *(a3 + 4);
  self->_levelUsage[10] = a3[10];
  *&self->_levelUsage[6] = v5;
  *&self->_levelUsage[8] = v6;
  *&self->_levelUsage[4] = v4;
}

- (void)setBeamWidthUsage:(int64_t)a3[11]
{
  v3 = *a3;
  *&self->_beamWidthUsage[2] = *(a3 + 1);
  *self->_beamWidthUsage = v3;
  v4 = *(a3 + 2);
  v5 = *(a3 + 3);
  v6 = *(a3 + 4);
  self->_beamWidthUsage[10] = a3[10];
  *&self->_beamWidthUsage[8] = v6;
  *&self->_beamWidthUsage[6] = v5;
  *&self->_beamWidthUsage[4] = v4;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_luxLevel != 0x7FFFFFFF)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"luxLevel"}];
  }

  for (i = 3; i != 13; ++i)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", FigHostTimeToNanoseconds() / 0xF4240uLL), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"level_%d", i - 2)}];
  }

  for (j = 0; j != 11; ++j)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", FigHostTimeToNanoseconds() / 0xF4240uLL), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"beamWidth_%d", j)}];
  }

  return v3;
}

@end