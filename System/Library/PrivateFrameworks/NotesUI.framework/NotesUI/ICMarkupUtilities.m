@interface ICMarkupUtilities
@end

@implementation ICMarkupUtilities

void __100__ICMarkupUtilities_UI__dataToEditForAttachment_includeMarkupModelData_embedMarkupModelDataInImage___block_invoke(uint64_t a1)
{
  v20 = [*(a1 + 32) media];
  if ([v20 isPasswordProtected])
  {
    [v20 decryptedData];
  }

  else
  {
    [v20 data];
  }
  v2 = ;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) orientation];
    if (([*(a1 + 32) shouldEmbedMarkupDataInMedia] & 1) != 0 || *(a1 + 56) != 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = [*(a1 + 32) markupModelData];
    }

    v7 = [*(a1 + 32) croppingQuad];
    if (v5 || [*(a1 + 32) imageFilterType] || v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [MEMORY[0x1E69DCAB8] ic_imageWithData:*(*(*(a1 + 40) + 8) + 40)];
      if (v7)
      {
        v10 = [MEMORY[0x1E699A320] perspectiveCorrectedImageFromImage:v9 normalizedImageQuad:v7];

        v9 = v10;
      }

      v11 = [MEMORY[0x1E699A320] filteredImage:v9 orientation:0 imageFilterType:{objc_msgSend(*(a1 + 32), "imageFilterType")}];

      v12 = [MEMORY[0x1E699A320] imageWithRGBColorspaceFromImage:v11];

      if (v5)
      {
        v13 = [MEMORY[0x1E69DCAB8] ic_orientedImageFromImage:v12 toOrientation:v5];

        v12 = v13;
      }

      v14 = [v12 ic_JPEGData];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      objc_autoreleasePoolPop(v8);
    }

    if ([v6 length])
    {
      v17 = [*(a1 + 48) imageDataWithMarkupModelData:v6 sourceImageData:*(*(*(a1 + 40) + 8) + 40) embedData:*(a1 + 57)];
      v18 = *(*(a1 + 40) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }
  }
}

@end