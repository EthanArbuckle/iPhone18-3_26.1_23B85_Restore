@interface VCPMovieHighlightResult
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timerange;
- (VCPMovieHighlightResult)initWithTimeRange:(id *)a3 score:(float)a4 andKeyFrame:(id)a5;
@end

@implementation VCPMovieHighlightResult

- (VCPMovieHighlightResult)initWithTimeRange:(id *)a3 score:(float)a4 andKeyFrame:(id)a5
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = VCPMovieHighlightResult;
  v10 = [(VCPMovieHighlightResult *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&a3->var0.var0;
    v13 = *&a3->var0.var3;
    *(v10 + 56) = *&a3->var1.var1;
    *(v10 + 40) = v13;
    *(v10 + 24) = v12;
    *(v10 + 2) = a4;
    objc_storeStrong(v10 + 2, a5);
  }

  return v11;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timerange
{
  v3 = *&self->var1.var3;
  *&retstr->var0.var0 = *&self->var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var1;
  return self;
}

@end