@interface PBMedia
+ (BOOL)readEmbeddedSoundFromClientDataHolder:(id)holder toImage:(id)image state:(id)state;
+ (BOOL)readLinkedMovieFromMovieHolder:(id)holder toImage:(id)image state:(id)state;
@end

@implementation PBMedia

+ (BOOL)readEmbeddedSoundFromClientDataHolder:(id)holder toImage:(id)image state:(id)state
{
  holderCopy = holder;
  imageCopy = image;
  stateCopy = state;
  v9 = [holderCopy firstChildOfType:4115];
  v10 = v9;
  if (!v9)
  {
    v16 = 0;
    goto LABEL_28;
  }

  DocumentRef = PptBinaryReader::getDocumentRef([stateCopy reader]);
  documentRoot = [stateCopy documentRoot];
  v40 = v10;
  v13 = [documentRoot pbReferenceWithID:DocumentRef];
  v38 = stateCopy;
  v39 = holderCopy;

  v37 = v13;
  v14 = [v13 firstChildOfType:2020];
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v15;
    if ([v14 childCount] <= v15)
    {
      break;
    }

    v18 = [v14 childAt:v15];
    eshObject = [v18 eshObject];
    if ((*(*eshObject + 16))(eshObject) != 2022)
    {
      goto LABEL_21;
    }

    v20 = [v18 childOfType:4026 instance:2];
    eshObject2 = [v20 eshObject];
    {
      v23 = [MEMORY[0x277CCACA8] stringWithCsString:v22 + 48];
    }

    else
    {
      v23 = 0;
    }

    if ([v23 intValue] != v42)
    {

LABEL_21:
      goto LABEL_22;
    }

    v24 = [v18 childOfType:4026 instance:0];
    eshObject3 = [v24 eshObject];
    {
      v43 = [MEMORY[0x277CCACA8] stringWithCsString:v26 + 48];
    }

    else
    {
      v43 = 0;
    }

    v27 = [v18 firstChildOfType:2023];
    eshObject4 = [v27 eshObject];
    {
      BinaryDataReference = PptBinaryDataAtom::getBinaryDataReference(v29);
      if (*(BinaryDataReference + 16))
      {
        v31 = objc_alloc_init(OADSound);
        v32 = [[ESDBlipContext alloc] initWithOffset:*(BinaryDataReference + 8) byteCount:*(BinaryDataReference + 16) stream:*(BinaryDataReference + 40) streamID:*(BinaryDataReference + 12)];
        [(OCDDelayedNode *)v31 setDelayedContext:v32];
        [(OADSound *)v31 setName:v43];
        v33 = objc_alloc_init(OADOle);
        [(OADOle *)v33 setObject:v31];
        [imageCopy setOle:v33];

        v34 = 0;
        v35 = 0;
        v16 = 1;
      }

      else
      {
        v35 = 0;
        v34 = 1;
      }
    }

    else
    {
      v34 = 0;
      v35 = 1;
    }

    if (v34)
    {
      goto LABEL_21;
    }

    if (!v35)
    {
      break;
    }

LABEL_22:
    v15 = v17 + 1;
  }

  stateCopy = v38;
  holderCopy = v39;
  v10 = v40;
LABEL_28:

  return v16 & 1;
}

+ (BOOL)readLinkedMovieFromMovieHolder:(id)holder toImage:(id)image state:(id)state
{
  holderCopy = holder;
  imageCopy = image;
  stateCopy = state;
  eshObject = [holderCopy eshObject];
  (*(*eshObject + 16))(eshObject);
  v11 = [holderCopy childOfType:4026 instance:0];
  v12 = v11;
  if (v11)
    v13 = {;
    movie = [imageCopy movie];
    if (!movie)
    {
      movie = objc_alloc_init(objc_opt_class());
      [movie setIsExternal:1];
      [imageCopy setMovie:movie];
    }

    [movie setName:v13];
  }

  return v12 != 0;
}

@end