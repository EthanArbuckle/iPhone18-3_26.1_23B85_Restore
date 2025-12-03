@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData
- (id)addFieldWithInt:(int)int withInt:(int)withInt withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean withBoolean:(BOOL)a7;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData

- (id)addFieldWithInt:(int)int withInt:(int)withInt withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean withBoolean:(BOOL)a7
{
  fields = self->fields_;
  if (!fields)
  {
    goto LABEL_16;
  }

  v9 = a7;
  withBooleanCopy = withBoolean;
  booleanCopy = boolean;
  if ([(JavaUtilDeque *)fields isEmpty])
  {
    v14 = self->this$0_;
    posStart = self->posStart_;
    offStart = self->offStart_;
    payStart = self->payStart_;
    v18 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData alloc];
    v19 = withBooleanCopy;
    v20 = v18;
    sub_100009EAC(v18, v14, int, withInt, booleanCopy, v19, v9, posStart, offStart, payStart);
    goto LABEL_15;
  }

  getLast = [(JavaUtilDeque *)self->fields_ getLast];
  if (!getLast)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  if (*(getLast + 16) == 1)
  {
    v32 = getLast[17];
  }

  else
  {
    v32 = 0;
  }

  withIntCopy = withInt;
  if (*(getLast + 17) == 1)
  {
    v22 = getLast[17];
  }

  else
  {
    v22 = 0;
  }

  v23 = booleanCopy;
  v24 = getLast[14];
  v25 = v22 + getLast[15];
  v26 = withBooleanCopy;
  if (*(getLast + 18) == 1)
  {
    v27 = getLast[17];
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 + getLast[16];
  v29 = self->this$0_;
  v20 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData alloc];
  sub_100009EAC(v20, v29, int, withIntCopy, v23, v26, v9, v32 + v24, v25, v28);
LABEL_15:
  v30 = v20;
  [(JavaUtilDeque *)self->fields_ addWithId:v30];
  return v30;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData *)&v3 dealloc];
}

@end