@interface OrgApacheLuceneUtilAttributeSource_$3
- (OrgApacheLuceneUtilAttributeSource_$3)initWithJavaLangStringBuilder:(id)a3 withBoolean:(BOOL)a4;
- (void)dealloc;
- (void)reflectWithIOSClass:(id)a3 withNSString:(id)a4 withId:(id)a5;
@end

@implementation OrgApacheLuceneUtilAttributeSource_$3

- (void)reflectWithIOSClass:(id)a3 withNSString:(id)a4 withId:(id)a5
{
  v6 = self->val$buffer_;
  if (!v6)
  {
    goto LABEL_16;
  }

  if ([(JavaLangStringBuilder *)v6 length]>= 1)
  {
    [(JavaLangStringBuilder *)self->val$buffer_ appendWithChar:44];
  }

  if (self->val$prependAttClass_)
  {
    if (a3)
    {
      v10 = -[JavaLangStringBuilder appendWithNSString:](self->val$buffer_, "appendWithNSString:", [a3 getName]);
      if (v10)
      {
        [v10 appendWithChar:35];
        goto LABEL_8;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

LABEL_8:
  v11 = [(JavaLangStringBuilder *)self->val$buffer_ appendWithNSString:a4];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = [v11 appendWithChar:61];
  if (!v12)
  {
    goto LABEL_16;
  }

  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = @"null";
  }

  [v12 appendWithId:v13];
}

- (OrgApacheLuceneUtilAttributeSource_$3)initWithJavaLangStringBuilder:(id)a3 withBoolean:(BOOL)a4
{
  JreStrongAssign(&self->val$buffer_, a3);
  self->val$prependAttClass_ = a4;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeSource__3;
  [(OrgApacheLuceneUtilAttributeSource_$3 *)&v3 dealloc];
}

@end