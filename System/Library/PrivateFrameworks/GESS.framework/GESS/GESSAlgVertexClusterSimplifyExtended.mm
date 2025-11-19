@interface GESSAlgVertexClusterSimplifyExtended
- (BOOL)run:(id)a3;
@end

@implementation GESSAlgVertexClusterSimplifyExtended

- (BOOL)run:(id)a3
{
  v4 = a3;
  objc_msgSend_setAlgStatus_(self, v5, 1, v6);
  if ((objc_msgSend_valid(v4, v7, v8, v9) & 1) != 0 && objc_msgSend_meshType(v4, v10, v11, v12) == 1)
  {
    v32[1] = 0;
    objc_msgSend_voxelSize(self->_options, v10, v13, v12);
    v32[0] = v14;
    v18 = objc_msgSend_meshImpl(v4, v15, v16, v17);
    memset(v31, 0, sizeof(v31));
    v21 = sub_24BD46258(v18, v31, v32);
    if (v21)
    {
      v22 = sub_24BD51488(v31[0]);
      clusterCenterPositions = self->_clusterCenterPositions;
      self->_clusterCenterPositions = v22;

      v24 = sub_24BD51488((v31[0] + 24));
      clusterCenterColors = self->_clusterCenterColors;
      self->_clusterCenterColors = v24;

      v26 = sub_24BD51488((v31[0] + 48));
      clusterCenterNormals = self->_clusterCenterNormals;
      self->_clusterCenterNormals = v26;

      objc_msgSend_setAlgStatus_(self, v28, 3, v29);
    }

    else
    {
      objc_msgSend_setAlgStatus_(self, v19, 2, v20);
    }

    v33 = v31;
    sub_24BC8EE84(&v33);
  }

  else
  {
    objc_msgSend_setAlgStatus_(self, v10, 2, v12);
    v21 = 0;
  }

  return v21;
}

@end