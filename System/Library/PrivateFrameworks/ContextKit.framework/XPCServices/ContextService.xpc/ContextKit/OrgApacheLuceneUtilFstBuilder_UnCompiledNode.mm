@interface OrgApacheLuceneUtilFstBuilder_UnCompiledNode
- (id)getLastOutputWithInt:(int)a3;
- (void)__javaClone;
- (void)clear;
- (void)dealloc;
- (void)prependOutputWithId:(id)a3;
- (void)replaceLastWithInt:(int)a3 withOrgApacheLuceneUtilFstBuilder_Node:(id)a4 withId:(id)a5 withBoolean:(BOOL)a6;
- (void)setLastOutputWithInt:(int)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneUtilFstBuilder_UnCompiledNode

- (void)clear
{
  self->numArcs_ = 0;
  self->isFinal_ = 0;
  Weak = objc_loadWeak(&self->owner_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&self->output_, Weak[9]);
  self->inputCount_ = 0;
}

- (id)getLastOutputWithInt:(int)a3
{
  arcs = self->arcs_;
  numArcs = self->numArcs_;
  size = arcs->super.size_;
  v6 = numArcs - 1;
  if (numArcs - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v7 = (&arcs->elementType_)[v6];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  return v7[4].super.isa;
}

- (void)replaceLastWithInt:(int)a3 withOrgApacheLuceneUtilFstBuilder_Node:(id)a4 withId:(id)a5 withBoolean:(BOOL)a6
{
  arcs = self->arcs_;
  if (!arcs)
  {
    JreThrowNullPointerException();
  }

  numArcs = self->numArcs_;
  size = arcs->super.size_;
  v11 = numArcs - 1;
  if (numArcs - 1 < 0 || v11 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (numArcs - 1));
  }

  v12 = (&arcs->elementType_)[v11];
  objc_storeWeak(&v12[2].super.isa, a4);
  JreStrongAssign(&v12[5].super.isa, a5);
  LOBYTE(v12[3].super.isa) = a6;
}

- (void)setLastOutputWithInt:(int)a3 withId:(id)a4
{
  arcs = self->arcs_;
  if (!arcs)
  {
    JreThrowNullPointerException();
  }

  numArcs = self->numArcs_;
  size = arcs->super.size_;
  v7 = numArcs - 1;
  if (numArcs - 1 < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (numArcs - 1));
  }

  p_isa = &(&arcs->elementType_)[v7][4].super.isa;

  JreStrongAssign(p_isa, a4);
}

- (void)prependOutputWithId:(id)a3
{
  if (self->numArcs_ >= 1)
  {
    v5 = 0;
    while (1)
    {
      arcs = self->arcs_;
      if (!arcs)
      {
        break;
      }

      size = arcs->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      v8 = (&arcs->elementType_)[v5];
      if (!v8)
      {
        break;
      }

      v9 = *(objc_loadWeak(&self->owner_) + 1);
      if (!v9)
      {
        break;
      }

      v10 = *(v9 + 40);
      if (!v10)
      {
        break;
      }

      v11 = self->arcs_;
      v12 = v11->super.size_;
      if (v5 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v5);
      }

      v13 = (&v11->elementType_)[v5];
      if (!v13)
      {
        break;
      }

      JreStrongAssign(&v8[4].super.isa, [v10 addWithId:a3 withId:v13[4].super.isa]);
      if (++v5 >= self->numArcs_)
      {
        goto LABEL_14;
      }
    }

LABEL_21:
    JreThrowNullPointerException();
  }

LABEL_14:
  if (self->isFinal_)
  {
    v14 = *(objc_loadWeak(&self->owner_) + 1);
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *(v14 + 40);
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = [v15 addWithId:a3 withId:self->output_];

    JreStrongAssign(&self->output_, v16);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstBuilder_UnCompiledNode;
  [(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstBuilder_UnCompiledNode;
  [(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)&v3 __javaClone];
}

@end