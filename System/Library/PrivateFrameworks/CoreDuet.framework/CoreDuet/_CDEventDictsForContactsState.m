@interface _CDEventDictsForContactsState
- (void)initWithMngr:(int)a3 me:(int)a4 relationshipContacts:(int)a5 avgOfAllCalls:(int)a6 emergencyFamilyContacts:(int)a7 emergencyContacts:(int)a8 contactParents:(id)obj photosContactIds:(id)a10 airDropDict:(id)a11 airDropDictAtHome:(uint64_t)a12 homeContacts:(uint64_t)a13;
@end

@implementation _CDEventDictsForContactsState

- (void)initWithMngr:(int)a3 me:(int)a4 relationshipContacts:(int)a5 avgOfAllCalls:(int)a6 emergencyFamilyContacts:(int)a7 emergencyContacts:(int)a8 contactParents:(id)obj photosContactIds:(id)a10 airDropDict:(id)a11 airDropDictAtHome:(uint64_t)a12 homeContacts:(uint64_t)a13
{
  OUTLINED_FUNCTION_70_0();
  a28 = v33;
  a29 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v82 = a33;
  v49 = a31;
  v50 = a32;
  v51 = a30;
  obja = v52;
  v86 = v52;
  v80 = v46;
  v85 = v46;
  v53 = v44;
  v81 = v42;
  v84 = v42;
  v54 = v40;
  v55 = v38;
  v56 = v36;
  v83 = v51;
  v57 = v49;
  v58 = v50;
  v59 = v82;
  if (v48 && (a17.receiver = v48, a17.super_class = _CDEventDictsForContactsState, v60 = objc_msgSendSuper2(&a17, sel_init), (v61 = v60) != 0))
  {
    objc_storeStrong(v60 + 1, obja);
    objc_storeStrong(v61 + 2, v80);
    v62 = [v53 copy];
    v63 = v61[3];
    v61[3] = v62;

    objc_storeStrong(v61 + 4, v81);
    v64 = [v54 copy];
    v65 = v61[5];
    v61[5] = v64;

    v66 = [v55 copy];
    v67 = v61[6];
    v61[6] = v66;

    v68 = [v56 copy];
    v69 = v61[7];
    v61[7] = v68;

    v70 = v83;
    v71 = [v83 copy];
    v72 = v61[8];
    v61[8] = v71;

    v73 = [v57 copy];
    v74 = v61[9];
    v61[9] = v73;

    v75 = [v58 copy];
    v76 = v61[10];
    v61[10] = v75;

    v77 = [v59 copy];
    v78 = v61[11];
    v61[11] = v77;
  }

  else
  {
    v70 = v83;
  }

  OUTLINED_FUNCTION_72_0();
}

@end