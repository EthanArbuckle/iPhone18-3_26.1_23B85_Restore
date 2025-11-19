@interface EventTime
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)hostTime;
@end

@implementation EventTime

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)hostTime
{
  v3 = *&self[2].var1;
  retstr->var0 = self[1].var3;
  *&retstr->var1 = self[2].var0;
  retstr->var3 = v3;
  return self;
}

@end