@interface EDContentFormatsCollection
- (EDContentFormatsCollection)init;
- (unint64_t)addObject:(id)a3;
- (unint64_t)addOrEquivalentObject:(id)a3;
- (void)addDefaultWithNSString:(id)a3 formatId:(unint64_t)a4;
- (void)setupDefaults;
@end

@implementation EDContentFormatsCollection

- (EDContentFormatsCollection)init
{
  v5.receiver = self;
  v5.super_class = EDContentFormatsCollection;
  v2 = [(EDCollection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->mNextContentFormatId = 0;
    [(EDContentFormatsCollection *)v2 setupDefaults];
  }

  return v3;
}

- (void)setupDefaults
{
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"General" formatId:0];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"0" formatId:1];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"0.00" formatId:2];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"# formatId:##0", 3];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"# formatId:##0.00", 4];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"$# formatId:##0_;\\($#, ##0\\)"], 5);
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"$# formatId:##0_;[Red]\\($#, ##0\\)"], 6);
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"$# formatId:##0.00_;\\($#, ##0.00\\)"], 7);
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"$# formatId:##0.00_;[Red]\\($#, ##0.00\\)"], 8);
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"0%" formatId:9];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"0.00%" formatId:10];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"0.00E+00" formatId:11];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"# ?/?" formatId:12];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"# ??/??" formatId:13];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"m/d/yy" formatId:14];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"d-mmm-yy" formatId:15];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"d-mmm" formatId:16];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"mmm-yy" formatId:17];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"h:mm AM/PM" formatId:18];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"h:mm:ss AM/PM" formatId:19];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"h:mm" formatId:20];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"h:mm:ss" formatId:21];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"m/d/yy h:mm" formatId:22];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"m月d日yyyy年" formatId:31];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"h時mm分" formatId:32];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"h時mm分ss%秒" formatId:33];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"# formatId:##0_;\\(#, ##0\\)"], 37);
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"# formatId:##0_;[Red]\\(#, ##0\\)"], 38);
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"# formatId:##0.00_;\\(#, ##0.00\\)"], 39);
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"# formatId:##0.00_;[Red]\\(#, ##0.00\\)"], 40);
  -[EDContentFormatsCollection addDefaultWithNSString:formatId:](self, "addDefaultWithNSString:formatId:", @"_(* #,##0_);_(* \\(#,##0\\);_(* -_);_(@_)"), 41;
  -[EDContentFormatsCollection addDefaultWithNSString:formatId:](self, "addDefaultWithNSString:formatId:", @"_($* #,##0_);_($* \\(#,##0\\);_($* -_);_(@_)"), 42;
  -[EDContentFormatsCollection addDefaultWithNSString:formatId:](self, "addDefaultWithNSString:formatId:", @"_(* #,##0.00_);_(* \\(#,##0.00\\);_(* -??_);_(@_)"), 43;
  -[EDContentFormatsCollection addDefaultWithNSString:formatId:](self, "addDefaultWithNSString:formatId:", @"_($* #,##0.00_);_($* \\(#,##0.00\\);_($* -??_);_(@_)"), 44;
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"mm:ss" formatId:45];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"[h]:mm:ss" formatId:46];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"mm:ss.0" formatId:47];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"##0.00E+0" formatId:48];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"@" formatId:49];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"yyyy年m月" formatId:55];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"m月d日" formatId:56];
  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"ge.m.d" formatId:57];

  [(EDContentFormatsCollection *)self addDefaultWithNSString:@"ggge年m月d日" formatId:58];
}

- (unint64_t)addObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 formatId];
    mNextContentFormatId = self->mNextContentFormatId;
    if (v6 == -1)
    {
      self->mNextContentFormatId = mNextContentFormatId + 1;
      [v5 setFormatId:?];
    }

    else if (v6 >= mNextContentFormatId)
    {
      self->mNextContentFormatId = v6 + 1;
    }

    v10.receiver = self;
    v10.super_class = EDContentFormatsCollection;
    v8 = [(EDKeyedCollection *)&v10 addObject:v5];
    if (v8 != -1)
    {
      [v5 setReferenced:1];
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (unint64_t)addOrEquivalentObject:(id)a3
{
  v4 = a3;
  [v4 setReferenced:1];
  v7.receiver = self;
  v7.super_class = EDContentFormatsCollection;
  v5 = [(EDCollection *)&v7 addOrEquivalentObject:v4];

  return v5;
}

- (void)addDefaultWithNSString:(id)a3 formatId:(unint64_t)a4
{
  v5 = [EDContentFormat contentFormatWithNSString:a3 formatId:a4 builtIn:1];
  [(EDContentFormatsCollection *)self addObject:?];
  [v5 setReferenced:0];
}

@end