@interface MRURouteTextFormatter
- (BOOL)text:(id)text fitsInWidth:(double)width;
- (CGSize)sizeForText:(id)text;
- (MRURouteTextFormatter)init;
- (MRURouteTextFormatter)initWithConfiguration:(id)configuration;
- (id)bestStringForRouteNames:(id)names designatedGroupLeaderName:(id)name thatFitsWidth:(double)width;
- (id)formattedRouteNameForDesignatedGroupLeaderName:(id)name truncatedDesignatedGroupLeaderName:(id)leaderName routeNamesText:(id)text;
- (id)marketingNames;
- (id)plusSeparatedRouteNames:(id)names;
- (id)routeNamesSortedLength:(id)length;
- (id)text:(id)text displayAsSiriSuggestion:(BOOL)suggestion;
- (id)textForRoute:(id)route;
- (id)textForRoute:(id)route textBoundingWidth:(double)width;
- (id)textForRouteNames:(id)names;
- (id)textForRouteNames:(id)names textBoundingWidth:(double)width;
- (id)truncateText:(id)text by:(int64_t)by;
- (int64_t)compareLength:(id)length with:(id)with;
@end

@implementation MRURouteTextFormatter

- (MRURouteTextFormatter)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = MRURouteTextFormatter;
  v6 = [(MRURouteTextFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (MRURouteTextFormatter)init
{
  v3 = objc_alloc_init(MRURouteTextFormatterConfiguration);
  v4 = [(MRURouteTextFormatter *)self initWithConfiguration:v3];

  return v4;
}

- (id)textForRoute:(id)route textBoundingWidth:(double)width
{
  v27[1] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if ([routeCopy isAppleTVRoute])
  {
    designatedGroupLeaderName = [routeCopy designatedGroupLeaderName];
    v8 = [designatedGroupLeaderName length] != 0;
  }

  else
  {
    v8 = 0;
  }

  if (![routeCopy isDeviceRoute] || v8)
  {
    designatedGroupLeaderName2 = [routeCopy designatedGroupLeaderName];
  }

  else
  {
    designatedGroupLeaderName2 = [MEMORY[0x1E69B09A8] localDeviceLocalizedName];
  }

  v10 = designatedGroupLeaderName2;
  if (!-[__CFString length](designatedGroupLeaderName2, "length") || ![routeCopy isAirPlayingToDevice] || !objc_msgSend(routeCopy, "isProxyGroupPlayer"))
  {
    if ([routeCopy isDeviceRoute] && objc_msgSend(routeCopy, "numberOfOutputDevices") <= 1)
    {

      v10 = routeCopy;
      usesPredictedOutputDevice = [(MRURouteTextFormatterConfiguration *)self->_configuration usesPredictedOutputDevice];
      if (v10 && usesPredictedOutputDevice)
      {
        predictedOutputDevice = [(__CFString *)v10 predictedOutputDevice];
        routeName2 = predictedOutputDevice;
        if (predictedOutputDevice)
        {
          routeName = [predictedOutputDevice routeName];
          v27[0] = routeName;
          v19 = v27;
        }

        else
        {
          routeName = [(__CFString *)v10 routeName];
          v26 = routeName;
          v19 = &v26;
        }

        routeNames = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      }

      else
      {
        routeName2 = [(__CFString *)v10 routeName];
        v25 = routeName2;
        routeNames = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      }
    }

    else
    {
      isSplitRoute = [routeCopy isSplitRoute];

      if (!isSplitRoute)
      {
        routeNames = [routeCopy routeNames];
LABEL_29:
        v10 = &stru_1F1445548;
        goto LABEL_30;
      }

      v10 = +[MRUStringsProvider routeNameHeadphonesCount:](MRUStringsProvider, "routeNameHeadphonesCount:", [routeCopy numberOfOutputDevices]);
      v24 = v10;
      routeNames = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    }

LABEL_28:

    goto LABEL_29;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  routeNames2 = [routeCopy routeNames];
  routeNames = [v11 initWithArray:routeNames2];

  v14 = [routeNames indexOfObject:v10];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [routeNames removeObjectAtIndex:v14];
  }

  if ([(MRURouteTextFormatterConfiguration *)self->_configuration omitGroupLeaderName])
  {
    goto LABEL_28;
  }

LABEL_30:
  v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:routeNames];
  v22 = [(MRURouteTextFormatter *)self bestStringForRouteNames:v21 designatedGroupLeaderName:v10 thatFitsWidth:width];

  return v22;
}

- (id)textForRoute:(id)route
{
  configuration = self->_configuration;
  routeCopy = route;
  [(MRURouteTextFormatterConfiguration *)configuration textBoundingWidth];
  v6 = [(MRURouteTextFormatter *)self textForRoute:routeCopy textBoundingWidth:?];

  return v6;
}

- (id)textForRouteNames:(id)names textBoundingWidth:(double)width
{
  v6 = [MEMORY[0x1E695DFD8] setWithArray:names];
  v7 = [(MRURouteTextFormatter *)self bestStringForRouteNames:v6 designatedGroupLeaderName:&stru_1F1445548 thatFitsWidth:width];

  return v7;
}

- (id)textForRouteNames:(id)names
{
  configuration = self->_configuration;
  namesCopy = names;
  [(MRURouteTextFormatterConfiguration *)configuration textBoundingWidth];
  v6 = [(MRURouteTextFormatter *)self textForRouteNames:namesCopy textBoundingWidth:?];

  return v6;
}

- (id)bestStringForRouteNames:(id)names designatedGroupLeaderName:(id)name thatFitsWidth:(double)width
{
  namesCopy = names;
  nameCopy = name;
  allObjects = [namesCopy allObjects];
  v11 = [(MRURouteTextFormatter *)self routeNamesSortedAlphanumeric:allObjects];

  allObjects2 = [namesCopy allObjects];
  v13 = [(MRURouteTextFormatter *)self routeNamesSortedLength:allObjects2];

  v14 = [nameCopy copy];
  v15 = [(MRURouteTextFormatter *)self plusSeparatedRouteNames:v11];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MRURouteTextFormatter_bestStringForRouteNames_designatedGroupLeaderName_thatFitsWidth___block_invoke;
  aBlock[3] = &unk_1E7663BD0;
  aBlock[4] = self;
  v16 = nameCopy;
  v91 = v16;
  widthCopy = width;
  v17 = _Block_copy(aBlock);
  v18 = (v17 + 2);
  v71 = v15;
  v72 = v16;
  v70 = v13;
  if (v17[2](v17, v14, v15))
  {
    v19 = [(MRURouteTextFormatter *)self formattedRouteNameForDesignatedGroupLeaderName:v16 truncatedDesignatedGroupLeaderName:v14 routeNamesText:v15];
LABEL_45:
    configuration = [(MRURouteTextFormatter *)self configuration];
    v64 = -[MRURouteTextFormatter text:displayAsSiriSuggestion:](self, "text:displayAsSiriSuggestion:", v19, [configuration displayAsSiriSuggestion]);
    goto LABEL_46;
  }

  v20 = [v14 length];
  v21 = v20 - 2 * [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount];
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy_;
  v84 = __Block_byref_object_dispose_;
  v85 = &stru_1F1445548;
  v69 = v11;
  if (v21 >= 1)
  {
    v22 = v72;
    while (1)
    {
      v23 = [v22 isEqualToString:v14] ? 1 : 2;
      v24 = [(MRURouteTextFormatter *)self truncateText:v14 by:v23];

      v25 = [(MRURouteTextFormatter *)self plusSeparatedRouteNames:v13];
      v14 = v24;
      v26 = v81[5];
      v81[5] = v25;

      v27 = v17[2](v17, v24, v81[5]);
      v22 = v72;
      if (v27)
      {
        break;
      }

      if (!--v21)
      {
        goto LABEL_12;
      }
    }

    *(v87 + 24) = 1;
    v28 = v81[5];

    v71 = v28;
  }

LABEL_12:
  if (v87[3])
  {
    goto LABEL_22;
  }

  if ([(MRURouteTextFormatterConfiguration *)self->_configuration allowsMultitruncation])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v13];
    v66 = namesCopy;
    firstObject = [v29 firstObject];
    v31 = [firstObject length];
    minimumEndCharacterCount = [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount];

    *(v87 + 24) = 0;
    v33 = v81[5];
    v81[5] = &stru_1F1445548;

    if (v31 - 2 * minimumEndCharacterCount >= 1)
    {
      v34 = 2 * minimumEndCharacterCount;
      v35 = MEMORY[0x1E69E9820];
      v36 = __89__MRURouteTextFormatter_bestStringForRouteNames_designatedGroupLeaderName_thatFitsWidth___block_invoke_7;
      v37 = ~v34 + v31;
      v38 = &unk_1E7663BF8;
      v68 = v14;
      do
      {
        v39 = v37;
        v73[0] = v35;
        v73[1] = 3221225472;
        v73[2] = v36;
        v73[3] = v38;
        v74 = v29;
        selfCopy = self;
        v78 = &v80;
        v77 = v17;
        v76 = v14;
        v79 = &v86;
        [v70 enumerateObjectsUsingBlock:v73];
        v40 = *(v87 + 24);
        if (v40 == 1)
        {
          selfCopy2 = self;
          v42 = v17;
          v43 = v36;
          v44 = v35;
          v45 = v18;
          v46 = v29;
          v47 = v38;
          v48 = v81[5];

          v71 = v48;
          v38 = v47;
          v29 = v46;
          v18 = v45;
          v35 = v44;
          v36 = v43;
          v17 = v42;
          self = selfCopy2;
          v14 = v68;
        }

        if (v40)
        {
          break;
        }

        v37 = v39 - 1;
      }

      while (v39);
    }

    namesCopy = v66;
    v11 = v69;
  }

  if (v87[3])
  {
LABEL_22:
    v49 = 0;
  }

  else
  {
    firstObject2 = [v11 firstObject];
    if ([v11 count] < 2)
    {
      v51 = firstObject2;
    }

    else
    {
      v51 = +[MRUStringsProvider routeName:plusCount:](MRUStringsProvider, "routeName:plusCount:", firstObject2, [v11 count] - 1);
    }

    v67 = v51;
    if ((v17[2])(v17, v14))
    {
      v52 = v67;
      v53 = v67;
      v49 = 0;
      firstObject3 = firstObject2;
      v55 = v71;
    }

    else
    {
      firstObject3 = [v11 firstObject];

      v55 = &stru_1F1445548;
      v56 = 1;
      while (1)
      {
        v57 = [firstObject3 length];
        v49 = v56 > v57;
        if (v56 > v57)
        {
          break;
        }

        v58 = [(MRURouteTextFormatter *)self truncateText:firstObject3 by:v56];

        if ([v69 count] < 2)
        {
          v55 = v58;
        }

        else
        {
          v55 = +[MRUStringsProvider routeName:plusCount:](MRUStringsProvider, "routeName:plusCount:", v58, [v69 count] - 1);
        }

        ++v56;
        if (v17[2](v17, v14, v55))
        {
          firstObject4 = v55;
          v55 = firstObject4;
          goto LABEL_36;
        }
      }

      firstObject4 = [v69 firstObject];
LABEL_36:
      v53 = firstObject4;

      v52 = v67;
    }

    v71 = v53;
  }

  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v86, 8);
  v60 = [(MRURouteTextFormatter *)self formattedRouteNameForDesignatedGroupLeaderName:v72 truncatedDesignatedGroupLeaderName:v14 routeNamesText:v71];
  v19 = v60;
  if (!v49 || ![v60 length])
  {
    v11 = v69;
    goto LABEL_45;
  }

  v61 = 0;
  v11 = v69;
  while (1)
  {
    configuration = [(MRURouteTextFormatter *)self truncateText:v19 by:++v61];
    configuration2 = [(MRURouteTextFormatter *)self configuration];
    v64 = -[MRURouteTextFormatter text:displayAsSiriSuggestion:](self, "text:displayAsSiriSuggestion:", configuration, [configuration2 displayAsSiriSuggestion]);

    if ([(MRURouteTextFormatter *)self text:v64 fitsInWidth:width])
    {
      break;
    }

    if (v61 >= [v19 length])
    {
      goto LABEL_45;
    }
  }

LABEL_46:

  return v64;
}

uint64_t __89__MRURouteTextFormatter_bestStringForRouteNames_designatedGroupLeaderName_thatFitsWidth___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) formattedRouteNameForDesignatedGroupLeaderName:*(a1 + 40) truncatedDesignatedGroupLeaderName:a2 routeNamesText:a3];
  v5 = *(a1 + 32);
  v6 = [v5 configuration];
  v7 = [v5 text:v4 displayAsSiriSuggestion:{objc_msgSend(v6, "displayAsSiriSuggestion")}];

  v8 = [*(a1 + 32) text:v7 fitsInWidth:*(a1 + 48)];
  return v8;
}

void __89__MRURouteTextFormatter_bestStringForRouteNames_designatedGroupLeaderName_thatFitsWidth___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v7 = [*(a1 + 32) firstObject];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v9 = [v7 length];
  if (v9 <= [v8 length])
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v17 isEqualToString:v10];

    v12 = v11 ? 1 : 2;
    v13 = [*(a1 + 40) truncateText:v8 by:v12];
    [*(a1 + 32) setObject:v13 atIndexedSubscript:a3];

    v14 = [*(a1 + 40) plusSeparatedRouteNames:*(a1 + 32)];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if ((*(*(a1 + 56) + 16))())
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (id)text:(id)text displayAsSiriSuggestion:(BOOL)suggestion
{
  textCopy = text;
  v6 = textCopy;
  if (suggestion)
  {
    v7 = [MRUStringsProvider nowPlayingSiriSuggestion:textCopy];
  }

  else
  {
    v7 = textCopy;
  }

  v8 = v7;

  return v8;
}

- (int64_t)compareLength:(id)length with:(id)with
{
  lengthCopy = length;
  withCopy = with;
  v7 = [lengthCopy length];
  if (v7 <= [withCopy length])
  {
    v9 = [lengthCopy length];
    v8 = v9 < [withCopy length];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)routeNamesSortedLength:(id)length
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRURouteTextFormatter_routeNamesSortedLength___block_invoke;
  v5[3] = &unk_1E7663C40;
  v5[4] = self;
  v3 = [length sortedArrayUsingComparator:v5];

  return v3;
}

- (id)plusSeparatedRouteNames:(id)names
{
  v3 = [(MRURouteTextFormatter *)self routeNamesSortedAlphanumeric:names];
  v4 = +[MRUStringsProvider routeNamePlusSeparator];
  v5 = [v3 componentsJoinedByString:v4];

  return v5;
}

- (id)formattedRouteNameForDesignatedGroupLeaderName:(id)name truncatedDesignatedGroupLeaderName:(id)leaderName routeNamesText:(id)text
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  leaderNameCopy = leaderName;
  textCopy = text;
  v11 = [textCopy copy];
  marketingNames = [(MRURouteTextFormatter *)self marketingNames];
  v13 = [marketingNames containsObject:nameCopy];

  if (v13)
  {
    v14 = nameCopy;
  }

  else
  {
    v14 = leaderNameCopy;
  }

  v15 = v14;
  if ([v11 length] && objc_msgSend(v15, "length"))
  {
    v16 = [MRUStringsProvider routeNameArrowFormat:v15 rightSideText:v11];
  }

  else if ([v15 length])
  {
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = textCopy;
    }

    v16 = v17;
  }

  else
  {
    if (![textCopy length])
    {
      goto LABEL_15;
    }

    v16 = textCopy;
  }

  v18 = v16;

  v11 = v18;
LABEL_15:
  if ([(MRURouteTextFormatterConfiguration *)self->_configuration forcesUppercaseText])
  {
    v31 = textCopy;
    localizedUppercaseString = [v11 localizedUppercaseString];
    v20 = [localizedUppercaseString mutableCopy];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    marketingNames2 = [(MRURouteTextFormatter *)self marketingNames];
    v22 = [marketingNames2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(marketingNames2);
          }

          v26 = *(*(&v32 + 1) + 8 * i);
          v27 = [v11 rangeOfString:v26];
          if (v27 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v20 replaceCharactersInRange:v27 withString:{v28, v26}];
          }
        }

        v23 = [marketingNames2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v23);
    }

    v29 = [v20 copy];
    v11 = v29;
    textCopy = v31;
  }

  return v11;
}

- (CGSize)sizeForText:(id)text
{
  textCopy = text;
  font = [(MRURouteTextFormatterConfiguration *)self->_configuration font];

  if (font)
  {
    font2 = [(MRURouteTextFormatterConfiguration *)self->_configuration font];
    [textCopy mru_textSizeForFont:font2 boundingSize:{1.79769313e308, 1.79769313e308}];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)text:(id)text fitsInWidth:(double)width
{
  [(MRURouteTextFormatter *)self sizeForText:text];
  if (v5 < width)
  {
    return 1;
  }

  v7 = v5 - width;
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  return v7 < 0.00000011920929;
}

- (id)marketingNames
{
  if (marketingNames_onceToken != -1)
  {
    [MRURouteTextFormatter marketingNames];
  }

  v3 = marketingNames_marketingNames;

  return v3;
}

void __39__MRURouteTextFormatter_marketingNames__block_invoke()
{
  v0 = marketingNames_marketingNames;
  marketingNames_marketingNames = &unk_1F148B2F8;
}

- (id)truncateText:(id)text by:(int64_t)by
{
  textCopy = text;
  truncationMode = [(MRURouteTextFormatterConfiguration *)self->_configuration truncationMode];
  if (!truncationMode)
  {
    v18 = [textCopy length];
    v19 = v18 - by;
    if (v19 < [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount])
    {
      minimumEndCharacterCount = [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount];
      if (v18 >= minimumEndCharacterCount)
      {
        v19 = minimumEndCharacterCount;
      }

      else
      {
        v19 = v18;
      }
    }

    v13 = [textCopy substringWithRange:{0, v19 & ~(v19 >> 63)}];
    v21 = MEMORY[0x1E696AEC0];
    v14 = +[MRUStringsProvider routeNameEllipsisString];
    v17 = [v21 stringWithFormat:@"%@%@", v13, v14];
    goto LABEL_11;
  }

  if (truncationMode == 1)
  {
    v8 = [textCopy length];
    if (v8 - (by + 2 * [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount]) <= 0)
    {
      v9 = [textCopy length];
      by = v9 - 2 * [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount];
    }

    v10 = vcvtpd_s64_f64(vcvtd_n_f64_u64([textCopy length], 1uLL));
    v11 = vcvtd_n_f64_s64(by, 1uLL);
    v12 = (v11 + v10);
    v13 = [textCopy substringWithRange:{0, (v10 - v11)}];
    v14 = [textCopy substringWithRange:{v12, objc_msgSend(textCopy, "length") - v12}];
    v15 = MEMORY[0x1E696AEC0];
    v16 = +[MRUStringsProvider routeNameEllipsisString];
    v17 = [v15 stringWithFormat:@"%@%@%@", v13, v16, v14];

LABEL_11:
    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

@end