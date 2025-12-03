@interface VCPFaceTensorModel
- (VCPFaceTensorModel)initWithModelFile:(__sFILE *)file;
- (void)calculateMesh:(float *)mesh numVertices:(int)vertices blendshapes:(float *)blendshapes outputMesh:(float *)outputMesh;
- (void)dealloc;
@end

@implementation VCPFaceTensorModel

- (VCPFaceTensorModel)initWithModelFile:(__sFILE *)file
{
  v32.receiver = self;
  v32.super_class = VCPFaceTensorModel;
  v4 = [(VCPFaceTensorModel *)&v32 init];
  v5 = v4;
  if (v4)
  {
    if (fread(&v4->_numBlendshapePlusOne, 4uLL, 1uLL, file) != 1)
    {
      goto LABEL_43;
    }

    if (fread(&v5->_numComponents, 4uLL, 1uLL, file) != 1)
    {
      goto LABEL_43;
    }

    if (fread(&v5->_numIdentities, 4uLL, 1uLL, file) != 1)
    {
      goto LABEL_43;
    }

    if (fread(&v5->_numVertices, 4uLL, 1uLL, file) != 1)
    {
      goto LABEL_43;
    }

    if (v5->_numBlendshapePlusOne != 51)
    {
      goto LABEL_43;
    }

    if (v5->_numComponents != 501)
    {
      goto LABEL_43;
    }

    if (v5->_numIdentities != 501)
    {
      goto LABEL_43;
    }

    v5->_numBlendshapePlusOne = 52;
    v6 = operator new[](0xD0uLL, MEMORY[0x1E69E5398]);
    v5->_blendshapeComponentIndex = v6;
    if (!v6)
    {
      goto LABEL_43;
    }

    v7 = fread(v6, 4uLL, 0x34uLL, file);
    numBlendshapePlusOne = v5->_numBlendshapePlusOne;
    if (v7 != numBlendshapePlusOne)
    {
      goto LABEL_43;
    }

    v9 = 3 * numBlendshapePlusOne * v5->_numVertices;
    if (v9 < 0)
    {
      v10 = -1;
    }

    else
    {
      v10 = 4 * v9;
    }

    v11 = MEMORY[0x1E69E5398];
    v12 = operator new[](v10, MEMORY[0x1E69E5398]);
    v5->_meanBlendshape = v12;
    v13 = operator new[](v10, v11);
    v14 = v13;
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (!v13)
      {
        goto LABEL_43;
      }
    }

    else if (fread(v13, 4uLL, v9, file) == v9)
    {
      vcp_matrix_transpose(v14, v5->_meanBlendshape, 3 * v5->_numVertices, v5->_numBlendshapePlusOne);
      v17 = v5->_numComponents * v5->_numIdentities;
      v18 = (v17 & 0x80000000) != 0 ? -1 : 4 * v17;
      v19 = operator new[](v18, MEMORY[0x1E69E5398]);
      v5->_tensorCoeff = v19;
      if (v19)
      {
        if (fread(v19, 4uLL, v17, file) == v17)
        {
          numComponents = v5->_numComponents;
          v21 = 3 * v5->_numVertices * numComponents;
          v22 = (v21 & 0x80000000) != 0 ? -1 : 12 * v5->_numVertices * numComponents;
          v23 = operator new[](v22, MEMORY[0x1E69E5398]);
          v5->_componentsBlendshape = v23;
          if (v23)
          {
            if (fread(v23, 4uLL, v21, file) == v21)
            {
              v24 = MEMORY[0x1E69E5398];
              v25 = operator new[](0x7D4uLL, MEMORY[0x1E69E5398]);
              v5->_transformedCoeff = v25;
              numVertices = v5->_numVertices;
              if (numVertices < 0)
              {
                v27 = -1;
              }

              else
              {
                v27 = 12 * numVertices;
              }

              v28 = operator new[](v27, v24);
              v5->_blendShapeDelta = v28;
              MEMORY[0x1CCA95C10](v14, 0x1000C8052888210);
              if (v28)
              {
                v29 = v25 == 0;
              }

              else
              {
                v29 = 1;
              }

              if (v29)
              {
                v30 = 0;
              }

              else
              {
                v30 = v5;
              }

              goto LABEL_44;
            }
          }
        }
      }
    }

    MEMORY[0x1CCA95C10](v14, 0x1000C8052888210);
LABEL_43:
    v30 = 0;
LABEL_44:
    v16 = v30;
    goto LABEL_45;
  }

  v16 = 0;
LABEL_45:

  return v16;
}

- (void)dealloc
{
  meanBlendshape = self->_meanBlendshape;
  if (meanBlendshape)
  {
    MEMORY[0x1CCA95C10](meanBlendshape, 0x1000C8052888210);
  }

  tensorCoeff = self->_tensorCoeff;
  if (tensorCoeff)
  {
    MEMORY[0x1CCA95C10](tensorCoeff, 0x1000C8052888210);
  }

  componentsBlendshape = self->_componentsBlendshape;
  if (componentsBlendshape)
  {
    MEMORY[0x1CCA95C10](componentsBlendshape, 0x1000C8052888210);
  }

  blendshapeComponentIndex = self->_blendshapeComponentIndex;
  if (blendshapeComponentIndex)
  {
    MEMORY[0x1CCA95C10](blendshapeComponentIndex, 0x1000C8052888210);
  }

  transformedCoeff = self->_transformedCoeff;
  if (transformedCoeff)
  {
    MEMORY[0x1CCA95C10](transformedCoeff, 0x1000C8052888210);
  }

  blendShapeDelta = self->_blendShapeDelta;
  if (blendShapeDelta)
  {
    MEMORY[0x1CCA95C10](blendShapeDelta, 0x1000C8052888210);
  }

  v9.receiver = self;
  v9.super_class = VCPFaceTensorModel;
  [(VCPFaceTensorModel *)&v9 dealloc];
}

- (void)calculateMesh:(float *)mesh numVertices:(int)vertices blendshapes:(float *)blendshapes outputMesh:(float *)outputMesh
{
  outputMeshCopy = outputMesh;
  blendshapesCopy = blendshapes;
  v9 = (3 * vertices);
  matrix_multiplication(mesh, &blendshapes[v9], outputMesh, 1, self->_numBlendshapePlusOne - 1, v9);
  if (vertices >= 1)
  {
    do
    {
      v10 = *blendshapesCopy++;
      *outputMeshCopy = v10 + *outputMeshCopy;
      ++outputMeshCopy;
      --v9;
    }

    while (v9);
  }
}

@end