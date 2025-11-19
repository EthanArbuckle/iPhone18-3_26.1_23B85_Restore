@interface FPDMoveAtom
- (BOOL)shouldAccountForDownloadOfSourceItemForMoveInfo:(id)a3 extensionManager:(id)a4;
- (FPDMoveAtom)initWithKind:(unsigned __int8)a3 source:(id)a4 targetName:(id)a5 targetFolder:(id)a6 root:(id)a7 atomically:(BOOL)a8 sourceMaterializeOption:(unint64_t)a9 targetMaterializeOption:(unint64_t)a10 useDiskWriter:(BOOL)a11;
- (id)description;
@end

@implementation FPDMoveAtom

- (FPDMoveAtom)initWithKind:(unsigned __int8)a3 source:(id)a4 targetName:(id)a5 targetFolder:(id)a6 root:(id)a7 atomically:(BOOL)a8 sourceMaterializeOption:(unint64_t)a9 targetMaterializeOption:(unint64_t)a10 useDiskWriter:(BOOL)a11
{
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v27.receiver = self;
  v27.super_class = FPDMoveAtom;
  v22 = [(FPDMoveAtom *)&v27 init];
  v23 = v22;
  if (v22)
  {
    v22->_kind = a3;
    objc_storeStrong(&v22->_source, a4);
    v24 = [v19 fp_filenameFromDisplayNameWithExtension:0];
    targetName = v23->_targetName;
    v23->_targetName = v24;

    objc_storeStrong(&v23->_targetFolder, a6);
    objc_storeStrong(&v23->_root, a7);
    v23->_useAtomicMove = a8;
    v23->_useDiskWriter = a11;
    v23->_materializeOption = a9;
    v23->_targetMaterializeOption = a10;
  }

  return v23;
}

- (BOOL)shouldAccountForDownloadOfSourceItemForMoveInfo:(id)a3 extensionManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(FPDMoveAtom *)self kind]== 2)
  {
    v8 = [(FPDMoveAtom *)self source];
    v9 = [v6 targetFolder];
    v10 = [v8 materializeOptionForDestinationItem:v9 recursively:0 isCopy:objc_msgSend(v6 extensionManager:{"byCopy"), v7}];

    v11 = v10 == 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  if (self->_kind == 2)
  {
    v4 = @"<item-atom %@ -> %@ as %@; useDiskWriter %@>";
    goto LABEL_5;
  }

  if (!self->_kind)
  {
    v4 = @"<folder-atom %@ -> %@ as %@; useDiskWriter %@>";
LABEL_5:
    if (self->_useDiskWriter)
    {
      v5 = @"yes";
    }

    else
    {
      v5 = @"no";
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, self->_source, self->_targetFolder, self->_targetName, v5, v2];

    return v6;
  }

  v6 = @"<post-folder-atom>";

  return v6;
}

@end