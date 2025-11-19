@interface _ICNAFolderReportToAccount
- (_ICNAFolderReportToAccount)init;
- (void)updateFolderCollaborationMatrixWithCollaborationStatus:(id)a3 collaborationType:(id)a4;
@end

@implementation _ICNAFolderReportToAccount

- (_ICNAFolderReportToAccount)init
{
  v3.receiver = self;
  v3.super_class = _ICNAFolderReportToAccount;
  result = [(_ICNAFolderReportToAccount *)&v3 init];
  if (result)
  {
    result->_folderCollaborationMatrix[2][2] = 0;
    *&result->_folderCollaborationMatrix[1][1] = 0u;
    *&result->_folderCollaborationMatrix[0][0] = 0u;
  }

  return result;
}

- (void)updateFolderCollaborationMatrixWithCollaborationStatus:(id)a3 collaborationType:(id)a4
{
  v6 = a4;
  v7 = [a3 collaborationStatus];
  v8 = 3;
  if (v7 == 1)
  {
    v8 = 0;
  }

  v9 = v7 != 2 && v7 != 1;
  if (v7 == 2)
  {
    v8 = 1;
  }

  v10 = v7 != 3 && v9;
  if (v7 == 3)
  {
    v11 = 2;
  }

  else
  {
    v11 = v8;
  }

  v12 = [v6 collaborationType];

  if ((v12 - 1) <= 2 && !v10)
  {
    v13 = self + 12 * v11 + 4 * v12 - 4;
    ++*(v13 + 2);
  }
}

@end