@interface _ICNANoteReportToAccount
- (_ICNANoteReportToAccount)init;
- (unint64_t)countOfNotesWithFactor:(int64_t)factor andFactor:(int64_t)andFactor;
- (void)completeTwoFactorMatrixReportingForCurrentNote;
- (void)updateNoteCollaborationMatrixWithCollaborationStatus:(id)status collaborationType:(id)type;
- (void)updateNoteTwoFactorMatrixWithIndex:(int64_t)index;
@end

@implementation _ICNANoteReportToAccount

- (_ICNANoteReportToAccount)init
{
  v3.receiver = self;
  v3.super_class = _ICNANoteReportToAccount;
  result = [(_ICNANoteReportToAccount *)&v3 init];
  if (result)
  {
    *&result->_noteTwoFactorMatrix[0][0] = 0u;
    result->_noteCollaborationMatrix[2][2] = 0;
    *&result->_noteCollaborationMatrix[0][0] = 0u;
    *&result->_noteCollaborationMatrix[1][1] = 0u;
    *&result->_noteTwoFactorMatrix[9][2] = 0u;
    *&result->_noteTwoFactorMatrix[9][6] = 0u;
    *&result->_noteTwoFactorMatrix[8][4] = 0u;
    *&result->_noteTwoFactorMatrix[8][8] = 0u;
    *&result->_noteTwoFactorMatrix[7][6] = 0u;
    *&result->_noteTwoFactorMatrix[8][0] = 0u;
    *&result->_noteTwoFactorMatrix[6][8] = 0u;
    *&result->_noteTwoFactorMatrix[7][2] = 0u;
    *&result->_noteTwoFactorMatrix[6][0] = 0u;
    *&result->_noteTwoFactorMatrix[6][4] = 0u;
    *&result->_noteTwoFactorMatrix[5][2] = 0u;
    *&result->_noteTwoFactorMatrix[5][6] = 0u;
    *&result->_noteTwoFactorMatrix[4][4] = 0u;
    *&result->_noteTwoFactorMatrix[4][8] = 0u;
    *&result->_noteTwoFactorMatrix[3][6] = 0u;
    *&result->_noteTwoFactorMatrix[4][0] = 0u;
    *&result->_noteTwoFactorMatrix[2][8] = 0u;
    *&result->_noteTwoFactorMatrix[3][2] = 0u;
    *&result->_noteTwoFactorMatrix[2][0] = 0u;
    *&result->_noteTwoFactorMatrix[2][4] = 0u;
    *&result->_noteTwoFactorMatrix[1][2] = 0u;
    *&result->_noteTwoFactorMatrix[1][6] = 0u;
    *&result->_noteTwoFactorMatrix[0][4] = 0u;
    *&result->_noteTwoFactorMatrix[0][8] = 0u;
  }

  return result;
}

- (void)updateNoteTwoFactorMatrixWithIndex:(int64_t)index
{
  if (index < 1)
  {
    goto LABEL_5;
  }

  v3 = &self->_noteTwoFactorMatrix[0][index];
  indexCopy = index;
  do
  {
    v5 = *v3 + 0.51;
    *v3 = v5;
    v3 += 10;
    --indexCopy;
  }

  while (indexCopy);
  if (index <= 8)
  {
LABEL_5:
    v6 = index - 9;
    v7 = &self->_noteTwoFactorMatrix[0][11 * index + 1];
    do
    {
      v8 = *v7 + 0.51;
      *v7++ = v8;
    }

    while (!__CFADD__(v6++, 1));
  }
}

- (void)updateNoteCollaborationMatrixWithCollaborationStatus:(id)status collaborationType:(id)type
{
  typeCopy = type;
  collaborationStatus = [status collaborationStatus];
  v8 = 3;
  if (collaborationStatus == 1)
  {
    v8 = 0;
  }

  v9 = collaborationStatus != 2 && collaborationStatus != 1;
  if (collaborationStatus == 2)
  {
    v8 = 1;
  }

  v10 = collaborationStatus != 3 && v9;
  if (collaborationStatus == 3)
  {
    v11 = 2;
  }

  else
  {
    v11 = v8;
  }

  collaborationType = [typeCopy collaborationType];

  if ((collaborationType - 1) <= 2 && !v10)
  {
    v13 = self + 12 * v11 + 4 * collaborationType - 4;
    ++*(v13 + 102);
  }
}

- (void)completeTwoFactorMatrixReportingForCurrentNote
{
  v2 = 0;
  v3 = &self->_noteTwoFactorMatrix[0][1];
  v4 = 9;
  do
  {
    ++v2;
    v5 = v3;
    v6 = v4;
    do
    {
      *v5 = floorf(*v5);
      ++v5;
      --v6;
    }

    while (v6);
    --v4;
    v3 += 11;
  }

  while (v2 != 9);
}

- (unint64_t)countOfNotesWithFactor:(int64_t)factor andFactor:(int64_t)andFactor
{
  v4 = &self->_noteTwoFactorMatrix[factor][andFactor];
  if (factor > andFactor)
  {
    v4 = &self->_noteTwoFactorMatrix[andFactor][factor];
  }

  return *v4;
}

@end