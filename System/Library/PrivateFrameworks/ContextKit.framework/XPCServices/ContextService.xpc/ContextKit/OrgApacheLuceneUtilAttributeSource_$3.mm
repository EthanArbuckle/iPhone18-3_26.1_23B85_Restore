@interface OrgApacheLuceneUtilAttributeSource_$3
- (OrgApacheLuceneUtilAttributeSource_$3)initWithJavaLangStringBuilder:(id)builder withBoolean:(BOOL)boolean;
- (void)dealloc;
- (void)reflectWithIOSClass:(id)class withNSString:(id)string withId:(id)id;
@end

@implementation OrgApacheLuceneUtilAttributeSource_$3

- (void)reflectWithIOSClass:(id)class withNSString:(id)string withId:(id)id
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
    if (class)
    {
      v10 = -[JavaLangStringBuilder appendWithNSString:](self->val$buffer_, "appendWithNSString:", [class getName]);
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
  v11 = [(JavaLangStringBuilder *)self->val$buffer_ appendWithNSString:string];
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = [v11 appendWithChar:61];
  if (!v12)
  {
    goto LABEL_16;
  }

  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = @"null";
  }

  [v12 appendWithId:idCopy];
}

- (OrgApacheLuceneUtilAttributeSource_$3)initWithJavaLangStringBuilder:(id)builder withBoolean:(BOOL)boolean
{
  JreStrongAssign(&self->val$buffer_, builder);
  self->val$prependAttClass_ = boolean;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeSource__3;
  [(OrgApacheLuceneUtilAttributeSource_$3 *)&v3 dealloc];
}

@end