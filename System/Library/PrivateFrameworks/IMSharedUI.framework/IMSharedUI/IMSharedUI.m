BOOL sub_2547F92B0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_length(a1, a2, a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = objc_opt_class();
  v9 = objc_msgSend_im_maxBigmojiCount(v6, v7, v8);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v12 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v10, v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2547F93E8;
  v17[3] = &unk_279788F08;
  v13 = v12;
  v18 = v13;
  v19 = &v21;
  v20 = v9;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v14, 0, v5, 2, v17);
  v15 = v22[3] - 1 < v9;

  _Block_object_dispose(&v21, 8);
  return v15;
}

void sub_2547F93D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2547F93E8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v15 = objc_msgSend_stringByTrimmingCharactersInSet_(a2, a2, a1[4]);
  v11 = objc_msgSend_length(v15, v9, v10);
  v12 = v15;
  if (v11)
  {
    if (CEMStringIsSingleEmoji())
    {
      ++*(*(a1[5] + 8) + 24);
      v12 = v15;
    }

    else
    {
      v14 = 0;
      v12 = v15;
      do
      {
        if (objc_msgSend_characterAtIndex_(v12, v13, v14) != 65532)
        {
          *(*(a1[5] + 8) + 24) = 0;
          *a7 = 1;
        }

        ++v14;
        v12 = v15;
      }

      while (v11 != v14);
    }

    if (*(*(a1[5] + 8) + 24) > a1[6])
    {
      *a7 = 1;
    }
  }
}

uint64_t sub_2547FB9D8(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__updateBubbleOpacity(*(a1 + 32), a2, a3);
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_2547FC9D4(uint64_t a1)
{
  v2 = [_IMDispatchQueueBlock alloc];
  v4 = objc_msgSend_initWithBlock_key_priority_fifo_(v2, v3, *(a1 + 64), *(a1 + 32), *(a1 + 72), *(*(a1 + 40) + 8));
  v5 = *(a1 + 32);
  value = v4;
  if (v5)
  {
    v6 = objc_msgSend_objectForKey_(*(a1 + 48), v4, v5);

    if (v6)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v7, *MEMORY[0x277CBE660], @"Tried to add block for key %@ which IMDispatchQueue already contains.", *(a1 + 32));
    }

    objc_msgSend_setObject_forKey_(*(a1 + 48), v7, value, *(a1 + 32));
    v4 = value;
  }

  CFBinaryHeapAddValue(*(a1 + 56), v4);
  ++*(*(a1 + 40) + 8);
}

void sub_2547FCAA8(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_2547FCBD0;
  v12 = sub_2547FCBFC;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FCC04;
  block[3] = &unk_279788FA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = &v8;
  dispatch_sync(v2, block);
  v3 = v9[5];
  if (v3)
  {
    (*(v3 + 16))();
  }

  _Block_object_dispose(&v8, 8);
}

void sub_2547FCBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2547FCBD0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x259C1AB40](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_2547FCC04(uint64_t a1)
{
  v2 = CFBinaryHeapGetMinimum(*(a1 + 32));
  if (v2)
  {
    v14 = v2;
    v7 = objc_msgSend_key(v2, v3, v4);
    if (v7)
    {
      objc_msgSend_removeObjectForKey_(*(a1 + 40), v5, v7);
    }

    v8 = objc_msgSend_block(v14, v5, v6);
    v11 = objc_msgSend_copy(v8, v9, v10);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    CFBinaryHeapRemoveMinimumValue(*(a1 + 32));
    v2 = v14;
  }
}

void sub_2547FCE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2547FCE20(uint64_t a1, const char *a2)
{
  v11 = objc_msgSend_objectForKey_(*(a1 + 32), a2, *(a1 + 40));
  v5 = objc_msgSend_block(v11, v3, v4);
  v8 = objc_msgSend_copy(v5, v6, v7);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_2547FCFA8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectForKey_(*(a1 + 32), a2, *(a1 + 40));
  if (v3)
  {
    v6 = v3;
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_priority(v3, v4, v5);
    v3 = v6;
  }
}

uint64_t sub_2547FD134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2547FD14C(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_allKeys(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_copy(v9, v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2547FD2BC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectForKey_(*(a1 + 32), a2, *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
}

void sub_2547FD3E8(uint64_t a1, const char *a2)
{
  v6 = objc_msgSend_objectForKey_(*(a1 + 32), a2, *(a1 + 40));
  objc_msgSend_cancel(v6, v3, v4);
  objc_msgSend_removeObjectForKey_(*(a1 + 32), v5, *(a1 + 40));
}

uint64_t sub_2547FD520(uint64_t a1)
{
  CFBinaryHeapRemoveAllValues(*(a1 + 32));
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(*(a1 + 40), v2, &unk_286697740);
  v4 = *(a1 + 40);

  return MEMORY[0x2821F9670](v4, sel_removeAllObjects, v3);
}

uint64_t sub_2547FDE48(void *a1)
{
  v1 = a1;

  return MEMORY[0x2821F9670](v1, sel_CGImage, v2);
}

void sub_2547FE58C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2547FE614(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = sub_2547FE6FC;
  v9 = &unk_279789068;
  objc_copyWeak(&v10, (a1 + 48));
  objc_copyWeak(&v11, (a1 + 56));
  objc_msgSend_playAfterDelay_completion_(v2, v4, &v6, v3);
  objc_msgSend_setPlaying_(*(a1 + 40), v5, 1, v6, v7, v8, v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
}

void sub_2547FE6DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2547FE6FC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    objc_msgSend_audioPlayerDidFinishPlaying_(WeakRetained, v4, v5);
  }
}

void sub_2547FE768(id *a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2547FE880;
  v6[3] = &unk_279789090;
  v7 = a1[4];
  v10[1] = a1[8];
  objc_copyWeak(&v9, a1 + 6);
  objc_copyWeak(v10, a1 + 7);
  v8 = a1[5];
  v2 = MEMORY[0x259C1AB40](v6);
  if (objc_msgSend_shouldUseSpeaker(a1[5], v3, v4))
  {
    v2[2](v2);
  }

  else
  {
    objc_msgSend_playListenSound_(a1[5], v5, v2);
  }

  objc_destroyWeak(v10);
  objc_destroyWeak(&v9);
}

void sub_2547FE864(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_2547FE880(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = sub_2547FE968;
  v9 = &unk_279789068;
  objc_copyWeak(&v10, (a1 + 48));
  objc_copyWeak(&v11, (a1 + 56));
  objc_msgSend_playAfterDelay_completion_(v2, v4, &v6, v3);
  objc_msgSend_setPlaying_(*(a1 + 40), v5, 1, v6, v7, v8, v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
}

void sub_2547FE948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2547FE968(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    objc_msgSend_audioPlayerDidFinishPlaying_(WeakRetained, v4, v5);
  }
}

void sub_2547FEBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2547FEBF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2547FEC08(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isActive(*(a1 + 32), a2, a3))
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    if (!v6)
    {
      v7 = *(a1 + 48);
      shouldUseAVPlayer = objc_msgSend_shouldUseAVPlayer(*(a1 + 40), v4, v5);
      v10 = objc_msgSend_audioPlayerWithContentsOfURL_shouldUseAVPlayer_(IMAudioPlayer, v9, v7, shouldUseAVPlayer);
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      objc_msgSend_setDelegate_(*(*(*(a1 + 56) + 8) + 40), v13, *(a1 + 40));
      objc_msgSend_setAudioPlayer_(*(a1 + 40), v14, *(*(*(a1 + 56) + 8) + 40));
      v6 = *(*(*(a1 + 56) + 8) + 40);
    }

    return objc_msgSend_prepareToPlay(v6, v4, v5);
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);

    return objc_msgSend__notifyPlayerDidPrepareAudioURL_successfully_(v16, v4, v17, 0);
  }
}

void sub_2547FF3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2547FF410(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_setListenAudioPlayer_(WeakRetained, WeakRetained, 0);
    v3 = v6;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  return MEMORY[0x2821F96F8]();
}

void *sub_2547FFE04()
{
  result = MEMORY[0x259C1A7F0]("CMTimeGetSeconds", @"CoreMedia");
  off_27F611768 = result;
  return result;
}

void *sub_2547FFF78()
{
  result = MEMORY[0x259C1A7F0]("CMTimeCompare", @"CoreMedia");
  off_27F611778 = result;
  return result;
}

void *sub_2547FFFA8()
{
  result = MEMORY[0x259C1A7F0]("CMTimeGetSeconds", @"CoreMedia");
  off_27F611788 = result;
  return result;
}

uint64_t sub_2548001C8(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(a1 + 32) + 32) = 3;
  v4 = objc_msgSend_name(*(a1 + 40), a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x277CE60C0]);

  v7 = *(a1 + 32);

  return MEMORY[0x2821F9670](v7, sel__notifyPlayerDidFinishSuccessfully_, isEqualToString);
}

void sub_254801878(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(v4 + 2);
  v7 = objc_msgSend_layoutEngine_transcriptItemAtIndex_(WeakRetained, v6, *(a1 + 32), a2);
  v10 = objc_msgSend__makeDrawableForTranscriptItem_(v4, v8, v7);

  objc_msgSend_addObject_(*(a1 + 40), v9, v10);
}

__CFString *NSStringFromIMBalloonVisibleOrientation(uint64_t a1)
{
  v1 = @"IMBalloonVisibleOrientationRight";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"IMBalloonVisibleOrientationLeft";
  }
}

__CFString *NSStringFromIMTranscriptOrientation(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279789170[a1];
  }
}

__CFString *NSStringFromIMBalloonShape(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279789188[a1];
  }
}

__CFString *NSStringFromIMTailShape(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2797891A0[a1];
  }
}

__CFString *NSStringFromIMBalloonStyle(int a1)
{
  v1 = @"IMBalloonStyleStroked";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"IMBalloonStyleFilled";
  }
}

id NSStringFromIMRectCorner(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  v7 = v4;
  if (a1 == -1)
  {
    if (objc_msgSend_length(v4, v5, v6))
    {
      objc_msgSend_appendFormat_(v7, v8, @"|%@", @"IMRectCornerAllCorners");
    }

    else
    {
      objc_msgSend_appendString_(v7, v8, @"IMRectCornerAllCorners");
    }
  }

  v9 = v7;
  v12 = v9;
  if (a1)
  {
    if (objc_msgSend_length(v9, v10, v11))
    {
      objc_msgSend_appendFormat_(v12, v13, @"|%@", @"IMRectCornerTopLeft");
    }

    else
    {
      objc_msgSend_appendString_(v12, v13, @"IMRectCornerTopLeft");
    }
  }

  v14 = v12;
  v17 = v14;
  if ((a1 & 2) != 0)
  {
    if (objc_msgSend_length(v14, v15, v16))
    {
      objc_msgSend_appendFormat_(v17, v18, @"|%@", @"IMRectCornerTopRight");
    }

    else
    {
      objc_msgSend_appendString_(v17, v18, @"IMRectCornerTopRight");
    }
  }

  v19 = v17;
  v22 = v19;
  if ((a1 & 4) != 0)
  {
    if (objc_msgSend_length(v19, v20, v21))
    {
      objc_msgSend_appendFormat_(v22, v23, @"|%@", @"IMRectCornerBottomLeft");
    }

    else
    {
      objc_msgSend_appendString_(v22, v23, @"IMRectCornerBottomLeft");
    }
  }

  v24 = v22;
  v27 = v24;
  if ((a1 & 8) != 0)
  {
    if (objc_msgSend_length(v24, v25, v26))
    {
      objc_msgSend_appendFormat_(v27, v28, @"|%@", @"IMRectCornerBottomRight");
    }

    else
    {
      objc_msgSend_appendString_(v27, v28, @"IMRectCornerBottomRight");
    }
  }

  return v27;
}

id NSStringFromIMBalloonAttributes(int a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  v7 = v4;
  if (!a1)
  {
    if (objc_msgSend_length(v4, v5, v6))
    {
      objc_msgSend_appendFormat_(v7, v8, @"|%@", @"IMBalloonAttributeNone");
    }

    else
    {
      objc_msgSend_appendString_(v7, v8, @"IMBalloonAttributeNone");
    }
  }

  v9 = v7;
  v12 = v9;
  if ((a1 & 2) != 0)
  {
    if (objc_msgSend_length(v9, v10, v11))
    {
      objc_msgSend_appendFormat_(v12, v13, @"|%@", @"IMBalloonAttributeIsOpaque");
    }

    else
    {
      objc_msgSend_appendString_(v12, v13, @"IMBalloonAttributeIsOpaque");
    }
  }

  v14 = v12;
  v17 = v14;
  if ((a1 & 4) != 0)
  {
    if (objc_msgSend_length(v14, v15, v16))
    {
      objc_msgSend_appendFormat_(v17, v18, @"|%@", @"IMBalloonAttributeUseLargeAsset");
    }

    else
    {
      objc_msgSend_appendString_(v17, v18, @"IMBalloonAttributeUseLargeAsset");
    }
  }

  return v17;
}

id NSStringFromIMBalloonDescriptor(unsigned __int8 *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *a1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279789188[v3];
  }

  v5 = a1[1];
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_2797891A0[v5];
  }

  if (a1[1])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = @"IMBalloonStyleStroked";
  if (a1[2] != 1)
  {
    v8 = 0;
  }

  if (a1[2])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"IMBalloonStyleFilled";
  }

  v10 = *(a1 + 1);
  v11 = @"IMBalloonVisibleOrientationRight";
  if (v10 != 1)
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"IMBalloonVisibleOrientationLeft";
  }

  v13 = a1[24];
  v14 = v12;
  v15 = v9;
  v16 = NSStringFromIMColorType(v13);
  v19 = NSStringFromIMRectCorner(*(a1 + 2), v17, v18);
  v22 = NSStringFromIMBalloonAttributes(a1[25], v20, v21);
  v24 = objc_msgSend_stringWithFormat_(v2, v23, @"IMBalloonDescriptor_t = Shape:%@, TailShape:%@ (HasTail:%@), BalloonStyle:%@, BalloonOrientation:%@, BalloonColor:%@, BalloonCorners:%@, BalloonAttributes:%@", v4, v6, v7, v15, v14, v16, v19, v22);

  return v24;
}

uint64_t sub_254802270@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  return MEMORY[0x2821F9670](a1, sel_getValue_size_, a2);
}

id IMSharedUIBundle()
{
  if (qword_27F6117A0 != -1)
  {
    sub_254805848();
  }

  v1 = qword_27F611798;

  return v1;
}

uint64_t sub_2548022C8(uint64_t a1, const char *a2)
{
  qword_27F611798 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], a2, @"com.apple.messages.IMSharedUI");

  return MEMORY[0x2821F96F8]();
}

void IMSetAnonymizeContentAndContacts(int a1)
{
  if (byte_27F6117A8 != a1)
  {
    byte_27F6117A8 = a1;
    dispatch_async(MEMORY[0x277D85CD0], &unk_2866977E0);
  }
}

void sub_254802348(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3);
  objc_msgSend_postNotificationName_object_(v4, v3, @"IMAnonymizeContentAndContactsDidChangeNotification", 0);
}

id IMURLForResourceFromSharedUIBundle(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = IMSharedUIBundle();
  v7 = objc_msgSend_URLForResource_withExtension_(v5, v6, v4, v3);

  return v7;
}

uint64_t sub_254802458()
{
  qword_27F6117B0 = os_log_create(*MEMORY[0x277D1A068], "IMSharedUI.transcript");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2548024E4()
{
  qword_27F6117C0 = os_log_create(*MEMORY[0x277D1A068], "IMSharedUI.fsm");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_254802570()
{
  qword_27F6117D0 = os_log_create(*MEMORY[0x277D1A068], "IMSharedUI.audio");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2548025FC()
{
  qword_27F6117E0 = os_log_create(*MEMORY[0x277D1A068], "IMSharedUI.utilities");

  return MEMORY[0x2821F96F8]();
}

id sub_25480266C(uint64_t a1, void *a2, uint64_t a3)
{
  if (objc_msgSend_userInterfaceStyle(a2, a2, a3) == 2)
  {
    if (qword_27F6117F8 != -1)
    {
      sub_2548058C0();
    }

    v3 = &qword_27F6117F0;
  }

  else
  {
    if (qword_27F611808 != -1)
    {
      sub_2548058AC();
    }

    v3 = &qword_27F611800;
  }

  v4 = *v3;

  return v4;
}

uint64_t sub_2548026E8(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_27F6117F0 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, 0.149019608, 0.149019608, 0.160784314, 1.0);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_254802740(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_27F611800 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a2, a3, 0.898039216, 0.898039216, 0.917647059, 1.0);

  return MEMORY[0x2821F96F8]();
}

id sub_2548028B4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInterfaceStyle(a2, a2, a3);
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      goto LABEL_6;
    }

    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v4, v5, 0.168627451, 0.168627451, 0.180392157, 1.0);
  }

  else
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v4, v5, 0.894117647, 0.894117647, 0.901960784, 1.0);
  }
  v3 = ;
LABEL_6:

  return v3;
}

id sub_254802944(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInterfaceStyle(a2, a2, a3);
  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      goto LABEL_6;
    }

    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v4, v5, 0.619607843, 0.619607843, 0.619607843, 1.0);
  }

  else
  {
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v4, v5, 0.498039216, 0.498039216, 0.517647059, 1.0);
  }
  v3 = ;
LABEL_6:

  return v3;
}

uint64_t sub_2548029C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = qword_27F611810;
  if (!qword_27F611810)
  {
    v8 = objc_msgSend_autoupdatingCurrentCalendar(MEMORY[0x277CBEA80], v4, v5);
    v9 = qword_27F611810;
    qword_27F611810 = v8;

    v7 = qword_27F611810;
  }

  v10 = objc_msgSend_components_fromDate_(v7, v4, 28, a1);
  v12 = objc_msgSend_components_fromDate_(qword_27F611810, v11, 28, v6);
  isEqual = objc_msgSend_isEqual_(v10, v13, v12);

  return isEqual ^ 1u;
}

id sub_254802A6C(void *a1, const char *a2, uint64_t a3)
{
  if (qword_27F611818 != -1)
  {
    sub_2548058D4();
  }

  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a3);
  v8 = objc_msgSend_objectForKeyedSubscript_(qword_27F611820, v6, v5);
  if (!v8)
  {
    v8 = objc_msgSend__im_createDateFormatterForTimestampFormat_(a1, v7, a3);
    objc_msgSend_setObject_forKeyedSubscript_(qword_27F611820, v9, v8, v5);
  }

  v10 = objc_msgSend_stringFromDate_(v8, v7, a1);

  return v10;
}

uint64_t sub_254802B40(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_27F611820 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3);

  return MEMORY[0x2821F96F8]();
}

id sub_254802B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  v4 = 1;
  v5 = 2;
  if (a3 == 3)
  {
    v6 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (a3 != 3)
  {
    v4 = 0;
  }

  if (a3 == 2)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v3 = v4;
  }

  v7 = 1;
  v8 = a3 == 1;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v8 = 1;
    v9 = 1;
  }

  if (a3)
  {
    v7 = 0;
  }

  if (a3 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a3 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a3 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v3;
  }

  v13 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDoesRelativeDateFormatting_(v13, v14, v11);
  objc_msgSend_setDateStyle_(v13, v15, v12);
  objc_msgSend_setTimeStyle_(v13, v16, v10);

  return v13;
}

id IMAttachmentLogSubtype()
{
  if (qword_27F611830 != -1)
  {
    sub_2548058E8();
  }

  v1 = qword_27F611828;

  return v1;
}

uint64_t sub_254802C90()
{
  qword_27F611828 = os_log_create("com.apple.messages", "IMAttachment");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_254802CD4(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_254802E8C;
  v25[3] = &unk_2797890E0;
  v3 = v2;
  v26 = v3;
  objc_msgSend_loadValuesAsynchronouslyForKeys_completionHandler_(a1, v4, &unk_28669A808, v25);
  dispatch_semaphore_wait(v3, 0x3B9ACA00uLL);
  v5 = MEMORY[0x277CE6520];
  v7 = objc_msgSend_metadataForFormat_(a1, v6, *MEMORY[0x277CE5F48]);
  v9 = objc_msgSend_metadataItemsFromArray_withKey_keySpace_(v5, v8, v7, @"LOOP", *MEMORY[0x277CE5FB0]);

  if (!objc_msgSend_count(v9, v10, v11))
  {
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v24 = 0;
  v13 = objc_msgSend_objectAtIndexedSubscript_(v9, v12, 0);
  v16 = objc_msgSend_dataValue(v13, v14, v15);
  v18 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v17, &v24, 4);
  isEqualToData = objc_msgSend_isEqualToData_(v16, v19, v18);

  if ((isEqualToData & 1) == 0)
  {
    v22 = IMAttachmentLogSubtype();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_2548058FC(v22);
    }

    goto LABEL_7;
  }

  v21 = 1;
LABEL_8:

  return v21;
}

__CFString *NSStringFromIMColorType(int a1)
{
  if ((a1 + 2) > 8)
  {
    return 0;
  }

  else
  {
    return off_2797891E8[(a1 + 2)];
  }
}

uint64_t sub_254803948()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  qword_27F611838 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_254803EBC(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!qword_27F611848)
  {
    v4 = *(a1 + 32);
    v5 = objc_msgSend__createSingleton__im(v4, v2, v3);
    objc_msgSend___setSingleton__im_(v4, v6, v5);
  }

  objc_sync_exit(obj);
}

uint64_t sub_254803F98()
{
  v0 = dispatch_queue_create("IMAudioSessionControllerQueue", 0);
  qword_27F611858 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_2548041D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_audio(IMSharedUILogs, a2, a3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 57);
    v7 = MEMORY[0x259C1AB40](*(a1 + 40));
    *buf = 67109632;
    v21 = v5;
    v22 = 1024;
    v23 = v6;
    v24 = 2048;
    v25 = v7;
    _os_log_impl(&dword_2547F8000, v4, OS_LOG_TYPE_INFO, "dispatching setActive:%d shouldUseSpeaker:%d completion:%p", buf, 0x18u);
  }

  v8 = *(a1 + 56);
  if (v8 != objc_msgSend_isActive(*(a1 + 32), v9, v10) || *(a1 + 56) == 1 && (v13 = *(a1 + 48), v13 != objc_msgSend_options(*(a1 + 32), v11, v12)) || objc_msgSend_isDirty(*(a1 + 32), v11, v12))
  {
    if (*(a1 + 56) == 1)
    {
      objc_msgSend_configureAudioSessionWithOptions_(*(a1 + 32), v11, *(a1 + 48));
      objc_msgSend_setActive_(*(a1 + 32), v14, *(a1 + 56) & 1);
    }

    else
    {
      objc_msgSend_setActive_(*(a1 + 32), v11, 0);
    }

    objc_msgSend_setOptions_(*(a1 + 32), v15, *(a1 + 48));
    objc_msgSend_setDirty_(*(a1 + 32), v16, 0);
  }

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2548043BC;
    block[3] = &unk_279788F58;
    v19 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_254804D6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v5 = objc_msgSend_audio(IMSharedUILogs, v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_254805B98();
    }

    objc_end_catch();
    JUMPOUT(0x254804D24);
  }

  _Unwind_Resume(exception_object);
}

void sub_254804DE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2548056A8(void *a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_msgSend_count(a1, a2, a3);
  sub_254801C90();
  sub_254801C80();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_25480572C()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  sub_254801C80();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2548057C0(void **a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_msgSend_count(*a1, a2, a3);
  sub_254801C90();
  sub_254801C80();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2548059AC()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_254804DFC();
  sub_254804DE0(&dword_2547F8000, v0, v1, "AudioSessionController: Failed setting the mode:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254805A14()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_254804DFC();
  sub_254804DE0(&dword_2547F8000, v0, v1, "AudioSessionController: Failed setting the category:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254805A7C()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_254804DFC();
  sub_254804DE0(&dword_2547F8000, v0, v1, "AudioSessionController: Failed setting activation context:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254805AE4(int a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_outputDataSources(a2, a2, a3);
  v7[0] = 67109378;
  v7[1] = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_2547F8000, a3, OS_LOG_TYPE_ERROR, "AudioSessionController: configureAudioSession using speaker = %d, %@", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_254805B98()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_254804DFC();
  sub_254804DE0(&dword_2547F8000, v0, v1, "Exception deactivating audio session: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254805C00()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_254804DFC();
  sub_254804DE0(&dword_2547F8000, v0, v1, "AudioSessionController: Failed to deactivate audio session: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_254805C68()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_254804DFC();
  sub_254804DE0(&dword_2547F8000, v0, v1, "AudioSessionController: Failed to activate audio session: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}