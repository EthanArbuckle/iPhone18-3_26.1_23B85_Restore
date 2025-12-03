@interface _ICNAFolderReportToDevice
- (_ICNAFolderReportToDevice)init;
- (void)updateFolderCollaborationMatrixWithCollaborationStatus:(id)status collaborationType:(id)type;
@end

@implementation _ICNAFolderReportToDevice

- (_ICNAFolderReportToDevice)init
{
  v3.receiver = self;
  v3.super_class = _ICNAFolderReportToDevice;
  result = [(_ICNAFolderReportToDevice *)&v3 init];
  if (result)
  {
    result->_folderCollaborationMatrix[2][2] = 0;
    *&result->_folderCollaborationMatrix[1][1] = 0u;
    *&result->_folderCollaborationMatrix[0][0] = 0u;
  }

  return result;
}

- (void)updateFolderCollaborationMatrixWithCollaborationStatus:(id)status collaborationType:(id)type
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
    ++*(v13 + 2);
  }
}

@end