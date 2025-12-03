@interface DUFoundInEventResultObjC
- (DUFoundInEventResultObjC)initWithDUFoundInEventResult:(id)result;
@end

@implementation DUFoundInEventResultObjC

- (DUFoundInEventResultObjC)initWithDUFoundInEventResult:(id)result
{
  resultCopy = result;
  v121 = objc_msgSend_detectedEventPolarity(resultCopy, v4, v5, v6, v7);
  v132 = objc_msgSend_reservationIdError(resultCopy, v8, v9, v10, v11);
  v131 = objc_msgSend_reservationId(resultCopy, v12, v13, v14, v15);
  v120 = objc_msgSend_reservationNameError(resultCopy, v16, v17, v18, v19);
  v119 = objc_msgSend_reservationName(resultCopy, v20, v21, v22, v23);
  v118 = objc_msgSend_startAddressError(resultCopy, v24, v25, v26, v27);
  v130 = objc_msgSend_startAddress(resultCopy, v28, v29, v30, v31);
  v129 = objc_msgSend_startAddressComponents(resultCopy, v32, v33, v34, v35);
  v128 = objc_msgSend_endAddressError(resultCopy, v36, v37, v38, v39);
  v116 = objc_msgSend_endAddress(resultCopy, v40, v41, v42, v43);
  v127 = objc_msgSend_endAddressComponents(resultCopy, v44, v45, v46, v47);
  v126 = objc_msgSend_startPlaceError(resultCopy, v48, v49, v50, v51);
  v125 = objc_msgSend_startPlace(resultCopy, v52, v53, v54, v55);
  v124 = objc_msgSend_endPlaceError(resultCopy, v56, v57, v58, v59);
  v123 = objc_msgSend_endPlace(resultCopy, v60, v61, v62, v63);
  v122 = objc_msgSend_startDateError(resultCopy, v64, v65, v66, v67);
  v115 = objc_msgSend_startDate(resultCopy, v68, v69, v70, v71);
  v114 = objc_msgSend_endDateError(resultCopy, v72, v73, v74, v75);
  v113 = objc_msgSend_endDate(resultCopy, v76, v77, v78, v79);
  v84 = objc_msgSend_hotelNameError(resultCopy, v80, v81, v82, v83);
  v112 = objc_msgSend_hotelName(resultCopy, v85, v86, v87, v88);
  v93 = objc_msgSend_guestNameError(resultCopy, v89, v90, v91, v92);
  v98 = objc_msgSend_guestName(resultCopy, v94, v95, v96, v97);
  v103 = objc_msgSend_movieNameError(resultCopy, v99, v100, v101, v102);
  v108 = objc_msgSend_movieName(resultCopy, v104, v105, v106, v107);

  v133.receiver = self;
  v133.super_class = DUFoundInEventResultObjC;
  v109 = [(DUFoundInEventClientAbstractResult *)&v133 initWithFields:v121 reservationIdError:v132 reservationId:v131 reservationNameError:v120 reservationName:v119 startAddressError:v118 startAddress:v130 startAddressComponents:v129 endAddressError:v128 endAddress:v116 endAddressComponents:v127 startPlaceError:v126 startPlace:v125 endPlaceError:v124 endPlace:v123 startDateError:v122 startDate:v115 endDateError:v114 endDate:v113 hotelNameError:v84 hotelName:v112 guestNameError:v93 guestName:v98 movieNameError:v103 movieName:v108];

  if (v109)
  {
    v110 = v109;
  }

  return v109;
}

@end