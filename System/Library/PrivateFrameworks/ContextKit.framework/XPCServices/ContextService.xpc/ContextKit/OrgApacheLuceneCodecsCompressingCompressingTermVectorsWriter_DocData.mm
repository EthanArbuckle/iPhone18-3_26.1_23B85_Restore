@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData
- (id)addFieldWithInt:(int)a3 withInt:(int)a4 withBoolean:(BOOL)a5 withBoolean:(BOOL)a6 withBoolean:(BOOL)a7;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData

- (id)addFieldWithInt:(int)a3 withInt:(int)a4 withBoolean:(BOOL)a5 withBoolean:(BOOL)a6 withBoolean:(BOOL)a7
{
  fields = self->fields_;
  if (!fields)
  {
    goto LABEL_16;
  }

  v9 = a7;
  v10 = a6;
  v11 = a5;
  if ([(JavaUtilDeque *)fields isEmpty])
  {
    v14 = self->this$0_;
    posStart = self->posStart_;
    offStart = self->offStart_;
    payStart = self->payStart_;
    v18 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData alloc];
    v19 = v10;
    v20 = v18;
    sub_100009EAC(v18, v14, a3, a4, v11, v19, v9, posStart, offStart, payStart);
    goto LABEL_15;
  }

  v21 = [(JavaUtilDeque *)self->fields_ getLast];
  if (!v21)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  if (*(v21 + 16) == 1)
  {
    v32 = v21[17];
  }

  else
  {
    v32 = 0;
  }

  v33 = a4;
  if (*(v21 + 17) == 1)
  {
    v22 = v21[17];
  }

  else
  {
    v22 = 0;
  }

  v23 = v11;
  v24 = v21[14];
  v25 = v22 + v21[15];
  v26 = v10;
  if (*(v21 + 18) == 1)
  {
    v27 = v21[17];
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 + v21[16];
  v29 = self->this$0_;
  v20 = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData alloc];
  sub_100009EAC(v20, v29, a3, v33, v23, v26, v9, v32 + v24, v25, v28);
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