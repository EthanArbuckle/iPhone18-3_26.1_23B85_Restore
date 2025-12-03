@interface SYStoreDeltaSessionOwner
- (SYStoreDeltaSessionOwner)initWithChanges:(id)changes;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
@end

@implementation SYStoreDeltaSessionOwner

- (SYStoreDeltaSessionOwner)initWithChanges:(id)changes
{
  changesCopy = changes;
  v10.receiver = self;
  v10.super_class = SYStoreDeltaSessionOwner;
  v5 = [(SYStoreDeltaSessionOwner *)&v10 init];
  if (v5)
  {
    v6 = [changesCopy copy];
    changes = v5->_changes;
    v5->_changes = v6;

    v8 = v5;
  }

  return v5;
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  sessionCopy = session;
  changesCopy = changes;
  currentIdx = self->_currentIdx;
  if (currentIdx >= [(NSArray *)self->_changes count])
  {
    v15 = 2;
  }

  else
  {
    v10 = [(NSArray *)self->_changes count];
    v11 = self->_currentIdx;
    if (v11 < v10)
    {
      v12 = v10;
      while (1)
      {
        v13 = [(NSArray *)self->_changes objectAtIndexedSubscript:v11];
        v14 = changesCopy[2](changesCopy, v13);

        if ((v14 & 1) == 0)
        {
          break;
        }

        v11 = self->_currentIdx + 1;
        self->_currentIdx = v11;
        if (v11 >= v12)
        {
          goto LABEL_11;
        }
      }

      if ([sessionCopy state] == 5)
      {
        v15 = 5;
        goto LABEL_14;
      }

      v11 = self->_currentIdx;
    }

LABEL_11:
    if (v11 < [(NSArray *)self->_changes count])
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

LABEL_14:

  return v15;
}

@end