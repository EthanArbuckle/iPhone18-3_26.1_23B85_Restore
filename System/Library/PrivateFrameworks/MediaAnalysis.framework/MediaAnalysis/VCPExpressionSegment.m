@interface VCPExpressionSegment
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange;
- (void)setTimeRange:(id *)a3;
@end

@implementation VCPExpressionSegment

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange
{
  v3 = *(&self->var1.var0 + 4);
  *&retstr->var0.var0 = *&self->var0.var2;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *(&self->var1.var3 + 4);
  return self;
}

- (void)setTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *(&self->_timeRange.duration.value + 4) = *&a3->var1.var1;
  *&self->_timeRange.start.flags = v4;
  *(&self->_score + 1) = v3;
}

@end