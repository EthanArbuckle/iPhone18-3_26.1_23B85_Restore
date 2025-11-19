@interface OrgApacheLuceneIndexTerm
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (OrgApacheLuceneIndexTerm)initWithNSString:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4;
- (int)compareToWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setWithNSString:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4;
@end

@implementation OrgApacheLuceneIndexTerm

- (OrgApacheLuceneIndexTerm)initWithNSString:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4
{
  JreStrongAssign(&self->field_, a3);
  JreStrongAssign(&self->bytes_, a4);
  return self;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
    goto LABEL_4;
  }

  v5 = [(OrgApacheLuceneIndexTerm *)self getClass];
  if (v5 != [a3 getClass])
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  field = self->field_;
  v8 = *(a3 + 1);
  if (field)
  {
    v6 = [(NSString *)field isEqual:v8];
    if (!v6)
    {
      return v6;
    }
  }

  else if (v8)
  {
    goto LABEL_4;
  }

  bytes = self->bytes_;
  v10 = *(a3 + 2);
  if (bytes)
  {
    v6 = [(OrgApacheLuceneUtilBytesRef *)bytes isEqual:v10];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
LABEL_14:
    LOBYTE(v6) = 1;
    return v6;
  }

LABEL_4:
  LOBYTE(v6) = 0;
  return v6;
}

- (unint64_t)hash
{
  field = self->field_;
  if (field)
  {
    v4 = 31 * [(NSString *)field hash]+ 961;
  }

  else
  {
    v4 = 961;
  }

  bytes = self->bytes_;
  if (bytes)
  {
    LODWORD(bytes) = [(OrgApacheLuceneUtilBytesRef *)bytes hash];
  }

  return (bytes + v4);
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    field = self->field_;
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = self->field_;
  if (!v5)
  {
    goto LABEL_11;
  }

  if ([(NSString *)v5 isEqual:*(a3 + 1)])
  {
    bytes = self->bytes_;
    if (bytes)
    {
      v7 = *(a3 + 2);
      goto LABEL_8;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  bytes = self->field_;
  v7 = *(a3 + 1);
LABEL_8:

  return [(OrgApacheLuceneUtilBytesRef *)bytes compareToWithId:v7];
}

- (void)setWithNSString:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4
{
  JreStrongAssign(&self->field_, a3);

  JreStrongAssign(&self->bytes_, a4);
}

- (NSString)description
{
  field = self->field_;
  OrgApacheLuceneIndexTerm_toStringWithOrgApacheLuceneUtilBytesRef_(self->bytes_);
  return JreStrcat("$C$", v3, v4, v5, v6, v7, v8, v9, field);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexTerm;
  [(OrgApacheLuceneIndexTerm *)&v3 dealloc];
}

@end